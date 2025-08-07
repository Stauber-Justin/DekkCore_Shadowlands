#include "GameObject.h"
#include "GameObjectAI.h"
#include "PhasingHandler.h"
#include "ScriptMgr.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "ObjectMgr.h"
#include "TemporarySummon.h"


enum ShadowLandsIntro
{
    QUEST_CHILLING_SUMMONS_A          = 60545,
    QUEST_CHILLING_SUMMONS_H          = 61874,
    QUEST_THROUGH_SHATTERED_SKY       = 59751,

    SPELL_DARK_ABDUCTION_MOVIE        = 325721,
    SPELL_SHATTERED_SKY_SKYBOX        = 328755,
    SPELL_DEATHGATE_SUMMON            = 358872,
    SPELL_HOLDING_SHARD               = 326477,
    SPELL_SHARD_OF_DOMINATION_01      = 328866,
    SPELL_SHARD_OF_DOMINATION_02      = 328874,
    SPELL_SHARD_OF_DOMINATION_03      = 328876,
    SPELL_SHARD_OF_DOMINATION_04      = 328877,
    SPELL_SHARD_BASE_FX               = 328888,
    SPELL_SHARD_OF_DOMINATION_MAIN    = 328892,
    SPELL_CARRYING_SHARD_01           = 329185,
    SPELL_CARRYING_SHARD_02           = 329254,
    SPELL_CARRYING_SHARD_03           = 329255,
    SPELL_CARRYING_SHARD_04           = 329257,
    SPELL_CREDIT_SHARD_01             = 403908,
    SPELL_CREDIT_SHARD_02             = 403909,
    SPELL_CREDIT_SHARD_03             = 403910,
    SPELL_CREDIT_SHARD_04             = 403911,
    SPEll_VOID_CHANNELING             = 299214,
    SPELL_ROOT_SELF                   = 355868,

    MOVIE_DARK_ABDUCTION              = 937,

    SCENE_THROUGH_SHATTERED_SKY       = 329462,

    NPC_HIGHLORD_DARION_MOGRAINE1     = 176554,
    NPC_HIGHLORD_DARION_MOGRAINE2     = 169070,

    AREA_ACHERUS                      = 13539,
    AREA_THE_FROZEN_THRONE            = 10359,

};


class player_area_frozen_Throne : public PlayerScript
{
public:
    player_area_frozen_Throne() : PlayerScript("player_area_frozen_Throne") { }

    void OnUpdateArea(Player* player, uint32 newArea, uint32 /*oldArea*/) override
    {
       if (player->GetAreaId() == AREA_ACHERUS)
           if (player->GetQuestStatus(QUEST_CHILLING_SUMMONS_A) == QUEST_STATUS_INCOMPLETE
               || player->GetQuestStatus(QUEST_CHILLING_SUMMONS_H) == QUEST_STATUS_INCOMPLETE)
           {
               if (!player->HasAura(SPELL_SHATTERED_SKY_SKYBOX))
                   player->CastSpell(player, SPELL_SHATTERED_SKY_SKYBOX);
               if (player->HasAura(261764)) player->RemoveAura(261764);
           }

        if (player->GetAreaId() == AREA_THE_FROZEN_THRONE)
        {
            if (player->GetQuestStatus(QUEST_CHILLING_SUMMONS_A) == QUEST_STATUS_COMPLETE
                || player->GetQuestStatus(QUEST_CHILLING_SUMMONS_H) == QUEST_STATUS_COMPLETE)
            {
                if (player->HasAura(261764)) player->RemoveAura(261764);
                if (!player->HasAura(SPELL_SHATTERED_SKY_SKYBOX)) player->CastSpell(player, SPELL_SHATTERED_SKY_SKYBOX);
            }
            if (player->GetQuestStatus(QUEST_CHILLING_SUMMONS_A) == QUEST_STATUS_REWARDED
                || player->GetQuestStatus(QUEST_CHILLING_SUMMONS_H) == QUEST_STATUS_REWARDED)
            {
                if (player->HasAura(261764)) player->RemoveAura(261764);
                if (!player->HasAura(SPELL_SHATTERED_SKY_SKYBOX)) player->CastSpell(player, SPELL_SHATTERED_SKY_SKYBOX);
            }
        }
    }
};

enum chillingSummonEvent
{
    EVENT_CHILLING_SUMMONS_A  = 1000,
    EVENT_CHILLING_SUMMONS_H,

    ACTION_CHILLING_SUMMONS_A,
    ACTION_CHILLING_SUMMONS_H,
};
//a_chilling_summons_q60454_61874_part1
class npc_highlord_darion_mograine_176554 : public CreatureScript
{
public:
    npc_highlord_darion_mograine_176554() : CreatureScript("npc_highlord_darion_mograine_176554") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_highlord_darion_mograine_176554AI(creature);
    }

    struct npc_highlord_darion_mograine_176554AI : public ScriptedAI
    {
        npc_highlord_darion_mograine_176554AI(Creature* creature) : ScriptedAI(creature) {}
    private:
        bool say;
        bool aEventStart;
        bool hEventStart;
        EventMap  _events;

        void Reset() override
        {
            aEventStart = false;
            hEventStart = false;
            say = false;
            _events.Reset();
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                if (player->IsInDist(me, 30.0f))
                {
                    if (player->HasQuest(QUEST_CHILLING_SUMMONS_A) || player->HasQuest(QUEST_CHILLING_SUMMONS_H))
                    {
                        if (player->HasQuest(QUEST_CHILLING_SUMMONS_A))
                        {
                            if (!say)
                            {
                                    Talk(0);
                                    player->GetScheduler().Schedule(4s, [this](TaskContext context)
                                        {
                                            Talk(1);        //to_stormwind_txt
                                        });
                                say = true;
                            }
                        }
                        if (player->HasQuest(QUEST_CHILLING_SUMMONS_A))
                        {
                            if (!say)
                            {
                                    Talk(0);
                                    player->GetScheduler().Schedule(4s, [this](TaskContext context)
                                        {
                                            Talk(2);        //to_stormwind_txt
                                        });
                                say = true;
                            }
                        }      
                    }
                }
        }

        void DoAction(int32 action) override
        {
            if (action == ACTION_CHILLING_SUMMONS_A)
                _events.ScheduleEvent(EVENT_CHILLING_SUMMONS_A, 1s);
            if (action == ACTION_CHILLING_SUMMONS_H)
                _events.ScheduleEvent(EVENT_CHILLING_SUMMONS_H, 1s);
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHILLING_SUMMONS_A:
                    me->GetScheduler().Schedule(2s, [this](TaskContext context)
                        {
                            Talk(3);
                        });
                    me->GetScheduler().Schedule(13s, [this](TaskContext context)
                        {
                            if (Creature* npc = me->FindNearestCreature(61839, 50.0f))
                                me->SetFacingToObject(npc);
                        });
                    me->GetScheduler().Schedule(16s, [this](TaskContext context)
                        {
                            me->CastSpell(me, SPELL_DEATHGATE_SUMMON);
                            me->SummonCreature(171039, Position(-8479.98f, 395.578f, 115.841f, 3.22238f), TEMPSUMMON_TIMED_DESPAWN, 1min, 0U);
                        });
                    me->GetScheduler().Schedule(26s, [this](TaskContext context)
                        {
                            me->CastStop();
                            Talk(6);
                        });
                    me->GetScheduler().Schedule(27s, [this](TaskContext context)
                        {
                            me->SetWalk(true);
                            me->GetMotionMaster()->MovePoint(0, -8479.98f, 395.578f, 115.841f);
                            me->DespawnOrUnsummon(4s, 60s);
                        });
                    break;

                    //horde
                case EVENT_CHILLING_SUMMONS_H:
                    me->GetScheduler().Schedule(2s, [this](TaskContext context)
                        {
                            Talk(5);
                        });
                    me->GetScheduler().Schedule(13s, [this](TaskContext context)
                        {
                            if (Creature* npc = me->FindNearestCreature(61839, 50.0f))
                                me->SetFacingToObject(npc);
                        });
                    me->GetScheduler().Schedule(16s, [this](TaskContext context)
                        {
                            me->CastSpell(me, SPELL_DEATHGATE_SUMMON);
                            me->SummonCreature(171039, Position(-8479.98f, 395.578f, 115.841f, 3.22238f), TEMPSUMMON_TIMED_DESPAWN, 1min, 0U);
                        });
                    me->GetScheduler().Schedule(26s, [this](TaskContext context)
                        {
                            me->CastStop();
                            Talk(6);
                        });
                    me->GetScheduler().Schedule(27s, [this](TaskContext context)
                        {
                            me->SetWalk(true);
                            me->SetWalk(true);
                            me->GetMotionMaster()->MovePoint(0, -8479.98f, 395.578f, 115.841f);
                            me->DespawnOrUnsummon(4s, 1min);
                        });
                    break;
                }
            }
        }
    };
};

// npc_death_gate_to_acherus_171039
class npc_death_gate_to_acherus_171039 : public CreatureScript
{
public:
    npc_death_gate_to_acherus_171039() : CreatureScript("npc_death_gate_to_acherus_171039") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_death_gate_to_acherus_171039AI(creature);
    }

    struct npc_death_gate_to_acherus_171039AI : public ScriptedAI
    {
        npc_death_gate_to_acherus_171039AI(Creature* creature) : ScriptedAI(creature) {}

        bool OnGossipHello(Player* player) override
        {
            player->KilledMonsterCredit(173229);
            player->TeleportTo(2147, -642.370f, 2208.391f, 550.713f, 0.044f);
            return true;
        }
    };
};

//171789,171791
class npc_chilling_summons_commander : public CreatureScript
{
public:
    npc_chilling_summons_commander() : CreatureScript("npc_chilling_summons_commander") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_chilling_summons_commanderAI(creature);
    }

    struct npc_chilling_summons_commanderAI : public ScriptedAI
    {
        npc_chilling_summons_commanderAI(Creature* creature) : ScriptedAI(creature) {}

        bool OnGossipHello(Player* player) override
        {
            AddGossipItemFor(player, GossipOptionNpc::None, "Tell me what happened.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
            SendGossipMenuFor(player, 41731, me->GetGUID());
            player->PrepareQuestMenu(me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId ) override
        {
            if (gossipListId == 0)
            {
               if(player->HasQuest(QUEST_CHILLING_SUMMONS_A)) 
                if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_CHILLING_SUMMONS_A))
                    for (QuestObjective const& obj : quest->GetObjectives())
                        if (obj.ObjectID == 87208) // Learn about the fate of your leaders
                        {
                            uint16 slot = player->FindQuestSlot(QUEST_CHILLING_SUMMONS_A);
                            if (!player->IsQuestObjectiveComplete(slot, quest, obj)) // just make it complete once
                            {
                                player->SetQuestObjectiveData(obj, 1);
                                player->SendQuestUpdateAddCredit(quest, ObjectGuid::Empty, obj, 1);
                                player->CastSpell(player, SPELL_DARK_ABDUCTION_MOVIE, true);
                            }
                        }
               if (player->HasQuest(QUEST_CHILLING_SUMMONS_H))
                if (Quest const* quest = sObjectMgr->GetQuestTemplate(QUEST_CHILLING_SUMMONS_H))
                    for (QuestObjective const& obj : quest->GetObjectives())
                        if (obj.ObjectID == 87225) // Learn about the fate of your leaders
                        {
                            uint16 slot = player->FindQuestSlot(QUEST_CHILLING_SUMMONS_H);
                            if (!player->IsQuestObjectiveComplete(slot, quest, obj)) // just make it complete once
                            {
                                player->SetQuestObjectiveData(obj, 1);
                                player->SendQuestUpdateAddCredit(quest, ObjectGuid::Empty, obj, 1);
                                player->CastSpell(player, SPELL_DARK_ABDUCTION_MOVIE, true);
                            }
                        }
            }
            return true;
        }
    };
};

class player_credit_to_dark_abduction : public PlayerScript
{
public:
    player_credit_to_dark_abduction() : PlayerScript("player_credit_to_dark_abduction") { }

    void OnMovieComplete(Player* player, uint32 movieId)
    {
        if (player->HasQuest(QUEST_CHILLING_SUMMONS_A))
        {
            if (Creature* mograine = player->FindNearestCreature(NPC_HIGHLORD_DARION_MOGRAINE1, 30.0f))
             mograine->AI()->DoAction(ACTION_CHILLING_SUMMONS_A);
        }

        if (player->HasQuest(QUEST_CHILLING_SUMMONS_H))
        {
            if (movieId == MOVIE_DARK_ABDUCTION)
            {
                if (Creature* mograine = player->FindNearestCreature(NPC_HIGHLORD_DARION_MOGRAINE1, 30.0f))
                    mograine->AI()->DoAction(ACTION_CHILLING_SUMMONS_H);
            }
        }
    }
};

static const Position mograinePositions[3] =
{
    { -604.294f, 2208.37f, 550.513f },
    { -561.862f, 2209.21f, 539.338f },
    { -548.972f, 2211.22f, 539.277f }
};

enum darionEvent
{
    EVENT_CHILLIN_SUMMONS_I       =  100,
    EVENT_CHILLIN_SUMMONS_II,
    EVENT_CHILLIN_SUMMONS_III,
    EVENT_SHATTERED_SKY_I         =  200,
    EVENT_SHATTERED_SKY_II,
    EVENT_SHATTERED_SKY_III,
};

//a_chilling_summons_q60454_61874_part2
struct npc_highlord_darion_mograine_169070 : public EscortAI
{
    npc_highlord_darion_mograine_169070(Creature* creature) : EscortAI(creature)
    {
        Reset();
    }

private:
    bool EventStart1;
    bool EventStart2;
    EventMap _events;

    ObjectGuid uibolvarGUID;
    ObjectGuid uiTyrandeGUID;
    ObjectGuid uiGennGUID;
    ObjectGuid uiMuradinGUID;
    ObjectGuid uiAlleGUID;
    ObjectGuid uiGelbinGUID;
    //horde
    ObjectGuid uiTheronGUID;
    ObjectGuid uiCaliaGUID;
    ObjectGuid uiFirstGUID;
    ObjectGuid uiRokhanGUID;
    ObjectGuid uiGazlowoGUID;

    void Reset() override
    {
        EventStart1 = false;
        EventStart2 = false;
        _events.Reset();

        uibolvarGUID = ObjectGuid::Empty;
        uiTyrandeGUID = ObjectGuid::Empty;
        uiGennGUID = ObjectGuid::Empty;
        uiMuradinGUID = ObjectGuid::Empty;
        uiAlleGUID = ObjectGuid::Empty;
        uiGelbinGUID = ObjectGuid::Empty;
        uiTheronGUID = ObjectGuid::Empty;
        uiCaliaGUID = ObjectGuid::Empty;
        uiFirstGUID = ObjectGuid::Empty;
        uiRokhanGUID = ObjectGuid::Empty;
        uiGazlowoGUID = ObjectGuid::Empty;
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (Player* player = who->ToPlayer())
        {
            if (player->IsInDist(me, 10.0f))
            {
                if (player->GetAreaId() == AREA_ACHERUS)
                    if (player->HasQuest(QUEST_CHILLING_SUMMONS_A) || player->HasQuest(QUEST_CHILLING_SUMMONS_H))
                    {
                        if (!EventStart1)
                        {
                            EventStart1 = true;
                            me->SetWalk(true);
                            me->GetMotionMaster()->MovePoint(0, mograinePositions[0]);
                            _events.ScheduleEvent(EVENT_CHILLIN_SUMMONS_I, 1s);
                        }
                    }

                if (player->GetQuestObjectiveProgress(QUEST_CHILLING_SUMMONS_A, 0) || player->GetQuestObjectiveProgress(QUEST_CHILLING_SUMMONS_H, 0))
                {
                    if (!EventStart2)
                    {
                        EventStart2 = true;
                        _events.ScheduleEvent(EVENT_SHATTERED_SKY_I, 1s);
                    }
                }
            }

        }
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_CHILLIN_SUMMONS_I:
            {
                Talk(0);
                me->GetScheduler().Schedule(12s, [this](TaskContext context) { Talk(1); });
                me->GetScheduler().Schedule(20s, [this](TaskContext context) { Talk(2); });
                _events.ScheduleEvent(EVENT_CHILLIN_SUMMONS_II, 34s);
            }
            break;
            case EVENT_CHILLIN_SUMMONS_II:
            {
                Talk(3);
                me->GetMotionMaster()->MovePoint(1, mograinePositions[1]);
                me->GetScheduler().Schedule(10s, [this](TaskContext context) { Talk(4); });
                _events.ScheduleEvent(EVENT_CHILLIN_SUMMONS_III, 18s);
            }
            break;
            case EVENT_CHILLIN_SUMMONS_III:
                me->GetMotionMaster()->MovePoint(2, mograinePositions[2]);
                me->DespawnOrUnsummon(5s, 60s);
                break;

                //Through the ShatteredSky
            case EVENT_SHATTERED_SKY_I:
                if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                    uibolvarGUID = bolvar->GetGUID();
                if (Creature* tyrande = me->FindNearestCreature(169072, 50.0f))
                    uiTyrandeGUID = tyrande->GetGUID();
                if (Creature* genn = me->FindNearestCreature(169071, 50.0f))
                    uiGennGUID = genn->GetGUID();
                if (Creature* muradin = me->FindNearestCreature(170763, 50.0f))
                    uiMuradinGUID = muradin->GetGUID();
                if (Creature* alle = me->FindNearestCreature(170762, 50.0f))
                    uiAlleGUID = alle->GetGUID();
                if (Creature* gelbin = me->FindNearestCreature(170761, 50.0f))
                    uiGelbinGUID = gelbin->GetGUID();
                if (Creature* theron = me->FindNearestCreature(169073, 50.0f))
                    uiTheronGUID = theron->GetGUID();
                if (Creature* calia = me->FindNearestCreature(169075, 50.0f))
                    uiCaliaGUID = calia->GetGUID();
                if (Creature* first = me->FindNearestCreature(170759, 50.0f))
                    uiFirstGUID = first->GetGUID();
                if (Creature* rokhan = me->FindNearestCreature(170758, 50.0f))
                    uiRokhanGUID = rokhan->GetGUID();
                if (Creature* gazlowo = me->FindNearestCreature(170760, 50.0f))
                    uiGazlowoGUID = gazlowo->GetGUID();
                _events.ScheduleEvent(EVENT_SHATTERED_SKY_II, 1s);
                break;

            case EVENT_SHATTERED_SKY_II:
                if (Creature* theron = ObjectAccessor::GetCreature(*me, uiTheronGUID))
                    if (Creature* tyrande = ObjectAccessor::GetCreature(*me, uiTyrandeGUID))
                        if (Creature* genn = ObjectAccessor::GetCreature(*me, uiGennGUID))
                            if (Creature* calia = ObjectAccessor::GetCreature(*me, uiCaliaGUID))
                                if (Creature* Muradin = ObjectAccessor::GetCreature(*me, uiMuradinGUID))
                                    if (Creature* Alle = ObjectAccessor::GetCreature(*me, uiAlleGUID))
                                        if (Creature* Gelbin = ObjectAccessor::GetCreature(*me, uiGelbinGUID))
                                            if (Creature* First = ObjectAccessor::GetCreature(*me, uiFirstGUID))
                                                if (Creature* Rokhan = ObjectAccessor::GetCreature(*me, uiRokhanGUID))
                                                    if (Creature* Gazlowo = ObjectAccessor::GetCreature(*me, uiGazlowoGUID))
                                                        if (Creature* bolvar = ObjectAccessor::GetCreature(*me, uibolvarGUID))
                                                        {
                                                            bolvar->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                                                            theron->AI()->Talk(0);
                                                            me->AddDelayedEvent(10000, [theron]() -> void { theron->AI()->Talk(1); });
                                                            me->AddDelayedEvent(22000, [tyrande]() -> void { tyrande->AI()->Talk(0); });
                                                            me->AddDelayedEvent(29500, [genn]() -> void { genn->AI()->Talk(0); });
                                                            me->AddDelayedEvent(42000, [calia]() -> void {calia->AI()->Talk(0); });
                                                            me->AddDelayedEvent(50000, [tyrande, theron, genn, Muradin, Alle, Gelbin, calia, First, Rokhan, Gazlowo]() -> void
                                                                {
                                                                    tyrande->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    tyrande->SetFacingToObject(theron);
                                                                    genn->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    genn->SetFacingToObject(theron);
                                                                    Muradin->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    Muradin->SetFacingToObject(theron);
                                                                    Alle->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    Alle->SetFacingToObject(theron);
                                                                    Gelbin->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    Gelbin->SetFacingToObject(theron);

                                                                    //horde
                                                                    theron->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    theron->SetFacingToObject(tyrande);
                                                                    calia->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    calia->SetFacingToObject(tyrande);
                                                                    First->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    First->SetFacingToObject(tyrande);
                                                                    Rokhan->HandleEmoteCommand(EMOTE_STATE_READY_UNARMED);
                                                                    Rokhan->SetFacingToObject(tyrande);
                                                                    Gazlowo->SetFacingToObject(tyrande);
                                                                });
                                                            me->AddDelayedEvent(53000, [tyrande]() -> void { tyrande->AI()->Talk(1); });
                                                            me->AddDelayedEvent(60500, [bolvar]() -> void { bolvar->AI()->Talk(0); });
                                                            me->AddDelayedEvent(67500, [bolvar]() -> void
                                                                {
                                                                    bolvar->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                                                                    bolvar->AI()->Talk(1);
                                                                });
                                                        }
                _events.ScheduleEvent(EVENT_SHATTERED_SKY_III, 70s);
                break;
            case EVENT_SHATTERED_SKY_III:
                uibolvarGUID = ObjectGuid::Empty;
                uiTyrandeGUID = ObjectGuid::Empty;
                uiGennGUID = ObjectGuid::Empty;
                uiMuradinGUID = ObjectGuid::Empty;
                uiAlleGUID = ObjectGuid::Empty;
                uiGelbinGUID = ObjectGuid::Empty;
                uiTheronGUID = ObjectGuid::Empty;
                uiCaliaGUID = ObjectGuid::Empty;
                uiFirstGUID = ObjectGuid::Empty;
                uiRokhanGUID = ObjectGuid::Empty;
                uiGazlowoGUID = ObjectGuid::Empty;
                break;
            }
        }
    }
};

//115634
struct npc_deathbringer_rise_teleport_controller : public ScriptedAI
{
    npc_deathbringer_rise_teleport_controller(Creature* c) : ScriptedAI(c) { }

    void MoveInLineOfSight(Unit* target) override
    {
        if (!target->IsPlayer())
            return;

        if (target->GetDistance2d(me) <= 6.0f)
            if (Player* player = target->ToPlayer())
            {
                player->TeleportTo(2147, 559.735f, -2125.220f, 840.856f, 3.176f, false);

                if (player->HasQuest(QUEST_CHILLING_SUMMONS_H) || player->HasQuest(QUEST_CHILLING_SUMMONS_A))
                        player->KilledMonsterCredit(170749);
            }
    }
};

enum volvardominationEvent
{
    EVENT_DOMINATION_I = 2000,
    EVENT_DOMINATION_II,
    EVENT_DOMINATION_III,
    EVENT_DOMINATION_IV,
    EVENT_DOMINATION_V,
    EVENT_DOMINATION_VI,
};
//169076
struct npc_highlord_bolvar_fordragon_169076 : public ScriptedAI
{
    npc_highlord_bolvar_fordragon_169076(Creature* c) : ScriptedAI(c) {}
private:
    ObjectGuid m_playerGUID;
    EventMap _events;
    Position jump;
    Position mawteleport;
    bool eventStart1;
    bool eventStart2;
    bool eventStart3;
    bool eventStart4;


    void Reset() override
    {
        eventStart1 = false;
        eventStart2 = false;
        eventStart3 = false;
        eventStart4 = false;
        m_playerGUID = ObjectGuid::Empty;
        _events.Reset();
    }

    void EnterEvadeMode(EvadeReason /*reason*/) override {}

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THROUGH_SHATTERED_SKY)
        {
           //player->RemoveAura(SPELL_SHATTERED_SKY_SKYBOX);
           //player->ForceCompleteQuest(59751);
           //player->TeleportTo(2364, 4143.85f, 7874.89f, 4971.02f, 5.679f);
            m_playerGUID = player->GetGUID();
            _events.ScheduleEvent(EVENT_DOMINATION_I, 3s);
        }
    }

    void DoAction(int32 action) override
    {
        if (action == 1) _events.ScheduleEvent(EVENT_DOMINATION_II, 1s);
        if (action == 2) _events.ScheduleEvent(EVENT_DOMINATION_III, 1s);
        if (action == 3) _events.ScheduleEvent(EVENT_DOMINATION_IV, 1s);
        if (action == 4) _events.ScheduleEvent(EVENT_DOMINATION_V, 1s);
        if (action == 5) _events.ScheduleEvent(EVENT_DOMINATION_VI, 1s);
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
            {
                switch (eventId)
                {
                case EVENT_DOMINATION_I:
                {
                    Talk(2);
                    player->GetScheduler().Schedule(11s, [this](TaskContext context) { Talk(3); });
                    player->GetScheduler().Schedule(26s, [this](TaskContext context) { Talk(4); });
                    player->GetScheduler().Schedule(37s, [this](TaskContext context)
                        {
                            Talk(5);
                            if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                                player->KilledMonsterCredit(169076);
                            if (Creature* SD1 = me->FindNearestCreature(169095, 30.f, true))
                                SD1->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
                        });
                }
                break;

                case EVENT_DOMINATION_II:
                    domination2(player);
                    break;
                case EVENT_DOMINATION_III:
                    domination3(player);
                    break;
                case EVENT_DOMINATION_IV:
                    domination4(player);
                    break;
                case EVENT_DOMINATION_V:
                    domination5(player);
                    break;
                case EVENT_DOMINATION_VI:
                    domination6(player);
                    break;
                }
            }
        }
    }

    void OnQuestReward(Player* player, Quest const* quest, LootItemType /*type*/, uint32 /*opt*/) override
    {
        if (player->GetTeam() == HORDE)
            player->AbandonQuest(QUEST_CHILLING_SUMMONS_A);
        if (player->GetTeam() == ALLIANCE)
            player->AbandonQuest(QUEST_CHILLING_SUMMONS_H);
    }

    void domination2(Player* player)
    {
        Talk(6);
        if (Creature* SD1 = me->FindNearestCreature(169095, 40.0f, true))
            SD1->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        player->GetScheduler().Schedule(11s, [this] (TaskContext context)
            {
                Talk(7);
            });
        player->GetScheduler().Schedule(23s, [this] (TaskContext context)
            {
                Talk(8);
                if (Creature* SD2 = me->FindNearestCreature(169098, 30.f, true))
                    SD2->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
            });
    }

    void domination3(Player* player)
    {
        Talk(9);
        me->SetWalk(true);
        me->GetMotionMaster()->MovePoint(0, 498.624f, -2138.86f, 840.857f, true);
        if (Creature* SD2 = me->FindNearestCreature(169098, 30.f, true))
            SD2->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);

        player->GetScheduler().Schedule(12s, [this](TaskContext context)
            {
                Talk(10);
                if (Creature* SD3 = me->FindNearestCreature(169100, 30.f, true))
                    SD3->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
            });
    }

    void domination4(Player* player)
    {
        Talk(11);
        me->GetMotionMaster()->MovePoint(0, 509.145f, -2124.31f, 840.857f, true);
        if (Creature* SD3 = me->FindNearestCreature(169100, 30.f, true))
            SD3->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);

        player->GetScheduler().Schedule(9s, [this](TaskContext context)
            {
                Talk(12);
                if (Creature* darion = me->FindNearestCreature(169070, 50.0f))
                {
                    darion->SetWalk(true);
                    darion->GetMotionMaster()->MovePoint(1, 512.003f, -2123.49f, 840.857f, true);
                }
            });
        player->GetScheduler().Schedule(21s, [this](TaskContext context)
            {
                if (Creature* darion = me->FindNearestCreature(169070, 50.0f))
                    darion->AI()->Talk(5);
                if (Creature* SD4 = me->FindNearestCreature(169101, 30.f, true))
                    SD4->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
            });
    }

    void domination5(Player* player)
    {
        Talk(13);
        me->GetMotionMaster()->MovePoint(0, 529.391f, -2124.92f, 840.857f, true);
        if (Creature* SD4 = me->FindNearestCreature(169101, 30.f, true))
            SD4->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        player->GetScheduler().Schedule(12s, [this](TaskContext context)
            {
                Talk(14);
            });
        player->GetScheduler().Schedule(24s, [this](TaskContext context)
            {
                Talk(15);
                if (Creature* SD5 = me->FindNearestCreature(169109, 50.f, true))
                    SD5->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
            });
    }

    void domination6(Player* player)
    {
        std::list<Creature*> cList = player->FindNearestCreatures(169093, 80.0f);
        for (std::list<Creature*>::const_iterator itr = cList.begin(); itr != cList.end(); ++itr)
        {
            if (Creature* ritualist = *itr)
                ritualist->CastSpell(ritualist, 329476, true);
        }

        Talk(16);
        me->CastSpell(me, 329476, true);
        if (Creature* SD5 = me->FindNearestCreature(169109, 50.f, true))
            SD5->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        player->GetScheduler().Schedule(3s, [this](TaskContext context)
            {
                if (Creature* theron = me->FindNearestCreature(169073, 50.0f))
                    theron->AI()->Talk(2);
            });
        player->GetScheduler().Schedule(9s, [this](TaskContext context)
            {
                if (Creature* genn = me->FindNearestCreature(169071, 50.0f))
                    genn->AI()->Talk(1);
            });
        player->GetScheduler().Schedule(14s, [this](TaskContext context)
            {
                if (Creature* tyrande = me->FindNearestCreature(169072, 50.0f))
                    tyrande->AI()->Talk(2);
            });
        player->GetScheduler().Schedule(18s, [this](TaskContext context)
            {
                if (Creature* genn = me->FindNearestCreature(169071, 50.0f))
                    genn->AI()->Talk(2);
            });
        player->GetScheduler().Schedule(22s, [this](TaskContext context)
            {
                if (Creature* tyrande = me->FindNearestCreature(169072, 50.0f))
                {
                    tyrande->AI()->Talk(3);
                    jump = Position(508.561f, -2122.04f, 840.857f, 3.55771f);
                    tyrande->GetMotionMaster()->MoveJump(jump, 15, 7);
                    tyrande->DespawnOrUnsummon(2s, 30s);
                }
            });
        player->GetScheduler().Schedule(26s, [this](TaskContext context)
            {
                if (Creature* darion = me->FindNearestCreature(169070, 50.0f))
                    darion->GetMotionMaster()->MoveTargetedHome();
                me->GetMotionMaster()->MoveTargetedHome();
                Reset();
            });
        player->GetScheduler().Schedule(28s, [this, player](TaskContext context)
            {
                player->RemoveAura(SPELL_SHATTERED_SKY_SKYBOX);
                mawteleport = Position(4143.85f, 7874.89f, 4971.02f, 5.679f);
                player->TeleportTo(2364, mawteleport, 0);
            });
    }
};

// 329193 Taking
struct spell_Taking_329193 : public SpellScript
{
    PrepareSpellScript(spell_Taking_329193);

    bool onekillCret = false;

    void HandleDummy(SpellEffIndex /*effindex*/)
    {
        if (!onekillCret)
        {
            onekillCret = true;
            if (Unit* caster = GetCaster())
                if (Player* player = caster->ToPlayer())
                    if (Unit* target = GetHitUnit())
                        if (Creature* creTarget = target->ToCreature())
                        {
                            switch (target->GetEntry())
                            {
                            case 169095:
                                player->CastSpell(player, 329185);
                                break;
                            case 169098:
                                player->CastSpell(player, 329185);
                                break;
                            case 169100:
                                player->CastSpell(player, 329185);
                                break;
                            case 169101:
                                player->CastSpell(player, 329185);
                                break;
                            case 169109:
                                if (Creature* bolvar = player->FindNearestCreature(169076, 100.0f))
                                  bolvar->AI()->DoAction(1);
                                break;
                            }
                        }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_Taking_329193::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};



class go_place_shard : public GameObjectScript
{
public:
    go_place_shard() : GameObjectScript("go_place_shard") {}

    GameObjectAI* GetAI(GameObject* go) const override
    {
        return new go_place_shardAI(go);
    }

    struct go_place_shardAI : public GameObjectAI
    {
        go_place_shardAI(GameObject* go) : GameObjectAI(go) { Reset(); }

        void Reset() override
        {
           me->SetFlag(GO_FLAG_NOT_SELECTABLE);
        }

        bool OnGossipHello(Player* player) override
        {
            if (player->HasQuest(QUEST_THROUGH_SHATTERED_SKY))
            {
                player->CastStop();
            }
            return false;
        }

    };
};

class zone_frozen_throne_slintro : public ZoneScript
{
public:
    zone_frozen_throne_slintro() : ZoneScript("zone_frozen_throne_slintro") { }

    void OnPlayerDeath(Player* player) override
    {
        player->ResurrectPlayer(0.3f);
        player->TeleportTo(2147, -580.370f, 2210.814f, 544.852f, 0.032f);
    }
};

// 169095 169098 169100 169101 169109
struct npc_shard_of_domination : public ScriptedAI
{
    npc_shard_of_domination(Creature* c) : ScriptedAI(c)
    {
        me->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
    }

    bool OnGossipHello(Player* player) override
    {
        switch (me->GetEntry())
        {
        case 169095:
            player->CastSpell(player, 329185);
            if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                bolvar->AI()->DoAction(1);
            break;
        case 169098:
            player->CastSpell(player, 329185);
            if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                bolvar->AI()->DoAction(2);
            break;
        case 169100:
            player->CastSpell(player, 329185);
            if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                bolvar->AI()->DoAction(3);
            break;
        case 169101:
            player->CastSpell(player, 329185);
            if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                bolvar->AI()->DoAction(4);
            break;
        case 169109:
            player->KilledMonsterCredit(169109);
            if (Creature* bolvar = me->FindNearestCreature(169076, 100.0f))
                bolvar->AI()->DoAction(5);
            break;
        }
       
        return true;
    }
};

void AddSC_ShadowlandsIntro()
{
    new player_area_frozen_Throne();
    new npc_highlord_darion_mograine_176554();
    new npc_chilling_summons_commander();
    new player_credit_to_dark_abduction();
    RegisterCreatureAI(npc_highlord_darion_mograine_169070);
    new npc_death_gate_to_acherus_171039();
    RegisterCreatureAI(npc_deathbringer_rise_teleport_controller);
    RegisterCreatureAI(npc_highlord_bolvar_fordragon_169076);
    //RegisterSpellScript(spell_Taking_329193);
    //new go_place_shard();
    RegisterCreatureAI(npc_shard_of_domination);
    RegisterZoneScript(zone_frozen_throne_slintro);
}
