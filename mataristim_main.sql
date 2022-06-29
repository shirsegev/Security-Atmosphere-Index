  -- Mataistim - "Developing a "security atmoshpere index"
  -- (0) Create dimension tables
  -- (1) identify target urls no covid19
  -- (2) Create base table based on whitelist terms and blacklist terms
  -- (3) Summarize results per day
  -- (4) Normalize avgSalience and numMentions
  -- (5) Unify daily summaries with normalized numbbers
  -- (0) Create dimension tables
  -- whitelist
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.dim_whitelist_tmp` AS
SELECT
  "armed conflict" AS term
UNION ALL
SELECT
  "guerilla"
UNION ALL
SELECT
  "jihad"
UNION ALL
SELECT
  "limited war"
UNION ALL
SELECT
  "military action"
UNION ALL
SELECT
  "political"
UNION ALL
SELECT
  "race war"
UNION ALL
SELECT
  "siege"
UNION ALL
SELECT
  "terrorism"
UNION ALL
SELECT
  "unconventional"
UNION ALL
SELECT
  "contest"
UNION ALL
SELECT
  "coup"
UNION ALL
SELECT
  "dry season offensive"
UNION ALL
SELECT
  "gang"
UNION ALL
SELECT
  "insurgency"
UNION ALL
SELECT
  "limited war"
UNION ALL
SELECT
  "armed conflict"
UNION ALL
SELECT
  "civil"
UNION ALL
SELECT
  "cold"
UNION ALL
SELECT
  "aggression warfare"
UNION ALL
SELECT
  "ambush"
UNION ALL
SELECT
  "attrition warfare"
UNION ALL
SELECT
  "blitz"
UNION ALL
SELECT
  "chemical warfare"
UNION ALL
SELECT
  "clear and hold"
UNION ALL
SELECT
  "counter-insurgency"
UNION ALL
SELECT
  "decapitation"
UNION ALL
SELECT
  "divide and conquer"
UNION ALL
SELECT
  "encounter"
UNION ALL
SELECT
  "escalation"
UNION ALL
SELECT
  "feint"
UNION ALL
SELECT
  "fortification"
UNION ALL
SELECT
  "hand-to-hand combat"
UNION ALL
SELECT
  "human wave"
UNION ALL
SELECT
  "invasion"
UNION ALL
SELECT
  "mission"
UNION ALL
SELECT
  "rescue operations"
UNION ALL
SELECT
  "siege"
UNION ALL
SELECT
  "surge"
UNION ALL
SELECT
  "take no prisoners"
UNION ALL
SELECT
  "tussle"
UNION ALL
SELECT
  "aircraft carriers"
UNION ALL
SELECT
  "amphibious vessels"
UNION ALL
SELECT
  "artillery"
UNION ALL
SELECT
  "bayonets"
UNION ALL
SELECT
  "bombs"
UNION ALL
SELECT
  "carbines"
UNION ALL
SELECT
  "combat ships"
UNION ALL
SELECT
  "explosive devices"
UNION ALL
SELECT
  "grenades"
UNION ALL
SELECT
  "knives"
UNION ALL
SELECT
  "machetes"
UNION ALL
SELECT
  "mortar"
UNION ALL
SELECT
  "parachutes"
UNION ALL
SELECT
  "revolvers"
UNION ALL
SELECT
  "rockets"
UNION ALL
SELECT
  "smoke grenades"
UNION ALL
SELECT
  "submachine guns"
UNION ALL
SELECT
  "swords"
UNION ALL
SELECT
  "animus"
UNION ALL
SELECT
  "bloodshed"
UNION ALL
SELECT
  "casualties"
UNION ALL
SELECT
  "civil rights violations"
UNION ALL
SELECT
  "cruelty"
UNION ALL
SELECT
  "declaration of war"
UNION ALL
SELECT
  "devastation"
UNION ALL
SELECT
  "discord"
UNION ALL
SELECT
  "economic shift"
UNION ALL
SELECT
  "exodus"
UNION ALL
SELECT
  "flattened"
UNION ALL
SELECT
  "genocide"
UNION ALL
SELECT
  "hostility"
UNION ALL
SELECT
  "inhumane treatment"
UNION ALL
SELECT
  "mass casualties"
UNION ALL
SELECT
  "militarization"
UNION ALL
SELECT
  "occupation"
UNION ALL
SELECT
  "poverty"
UNION ALL
SELECT
  "rape"
UNION ALL
SELECT
  "restoration"
UNION ALL
SELECT
  "strife"
UNION ALL
SELECT
  "use of force"
UNION ALL
SELECT
  "war crimes"
UNION ALL
SELECT
  "war rations"
UNION ALL
SELECT
  "proxy"
UNION ALL
SELECT
  "rebel forces"
UNION ALL
SELECT
  "skirmish"
UNION ALL
SELECT
  "trench"
UNION ALL
SELECT
  "war on drugs"
UNION ALL
SELECT
  "conventional"
UNION ALL
SELECT
  "coup d ‘etat"
UNION ALL
SELECT
  "economic"
UNION ALL
SELECT
  "guerilla"
UNION ALL
SELECT
  "intra-state conflict"
UNION ALL
SELECT
  "military action"
UNION ALL
SELECT
  "battle"
UNION ALL
SELECT
  "clash"
UNION ALL
SELECT
  "conflict"
UNION ALL
SELECT
  "air attack"
UNION ALL
SELECT
  "armed force"
UNION ALL
SELECT
  "bait and bleed"
UNION ALL
SELECT
  "blockade"
UNION ALL
SELECT
  "choke point"
UNION ALL
SELECT
  "coercion"
UNION ALL
SELECT
  "counter-offensive"
UNION ALL
SELECT
  "deception"
UNION ALL
SELECT
  "do battle"
UNION ALL
SELECT
  "engage"
UNION ALL
SELECT
  "exhaustion"
UNION ALL
SELECT
  "fight"
UNION ALL
SELECT
  "frontal assault"
UNION ALL
SELECT
  "heavy force"
UNION ALL
SELECT
  "indirect approach"
UNION ALL
SELECT
  "land mines"
UNION ALL
SELECT
  "punishment"
UNION ALL
SELECT
  "separation"
UNION ALL
SELECT
  "skirmish"
UNION ALL
SELECT
  "surprise attack"
UNION ALL
SELECT
  "targeting infrastructure"
UNION ALL
SELECT
  "wage war"
UNION ALL
SELECT
  "ammunition"
UNION ALL
SELECT
  "anti-aircraft weaponry"
UNION ALL
SELECT
  "bandolier"
UNION ALL
SELECT
  "biological weapons"
UNION ALL
SELECT
  "bullets"
UNION ALL
SELECT
  "chemical weapons"
UNION ALL
SELECT
  "daggers"
UNION ALL
SELECT
  "fighter jets"
UNION ALL
SELECT
  "handguns"
UNION ALL
SELECT
  "land mines"
UNION ALL
SELECT
  "machine guns"
UNION ALL
SELECT
  "muskets"
UNION ALL
SELECT
  "pistols"
UNION ALL
SELECT
  "riot guns"
UNION ALL
SELECT
  "satellite surveillance"
UNION ALL
SELECT
  "sniper rifles"
UNION ALL
SELECT
  "submarines"
UNION ALL
SELECT
  "tank"
UNION ALL
SELECT
  "antagonism"
UNION ALL
SELECT
  "bombed out"
UNION ALL
SELECT
  "catastrophe"
UNION ALL
SELECT
  "concentration camp"
UNION ALL
SELECT
  "damaged infrastructure"
UNION ALL
SELECT
  "democracy"
UNION ALL
SELECT
  "dictator"
UNION ALL
SELECT
  "displacement"
UNION ALL
SELECT
  "enmity"
UNION ALL
SELECT
  "expulsion from homeland"
UNION ALL
SELECT
  "fleeing"
UNION ALL
SELECT
  "holocaust"
UNION ALL
SELECT
  "humanitarian crisis"
UNION ALL
SELECT
  "leveled"
UNION ALL
SELECT
  "mass grave"
UNION ALL
SELECT
  "military district"
UNION ALL
SELECT
  "plunder"
UNION ALL
SELECT
  "prisoner release"
UNION ALL
SELECT
  "refugees"
UNION ALL
SELECT
  "sexual assault"
UNION ALL
SELECT
  "trauma"
UNION ALL
SELECT
  "vendetta"
UNION ALL
SELECT
  "warlords"
UNION ALL
SELECT
  "wartime bride"
UNION ALL
SELECT
  "psychological"
UNION ALL
SELECT
  "resistance"
UNION ALL
SELECT
  "struggle"
UNION ALL
SELECT
  "turning movement"
UNION ALL
SELECT
  "war on poverty"
UNION ALL
SELECT
  "corporate"
UNION ALL
SELECT
  "crusade"
UNION ALL
SELECT
  "ethnic cleansing"
UNION ALL
SELECT
  "holy"
UNION ALL
SELECT
  "jihad"
UNION ALL
SELECT
  "nuclear"
UNION ALL
SELECT
  "campaign"
UNION ALL
SELECT
  "class"
UNION ALL
SELECT
  "confrontation"
UNION ALL
SELECT
  "air superiority"
UNION ALL
SELECT
  "attack"
UNION ALL
SELECT
  "biological warfare"
UNION ALL
SELECT
  "capture"
UNION ALL
SELECT
  "clash"
UNION ALL
SELECT
  "combat"
UNION ALL
SELECT
  "countervalue"
UNION ALL
SELECT
  "distraction"
UNION ALL
SELECT
  "encirclement"
UNION ALL
SELECT
  "engagement"
UNION ALL
SELECT
  "extraction"
UNION ALL
SELECT
  "flanking"
UNION ALL
SELECT
  "ground assault"
UNION ALL
SELECT
  "human shields"
UNION ALL
SELECT
  "interior lines"
UNION ALL
SELECT
  "military targets"
UNION ALL
SELECT
  "raid"
UNION ALL
SELECT
  "shock and awe"
UNION ALL
SELECT
  "special forces"
UNION ALL
SELECT
  "swarming"
UNION ALL
SELECT
  "torture"
UNION ALL
SELECT
  "withdrawal"
UNION ALL
SELECT
  "ammunition belts"
UNION ALL
SELECT
  "armored personnel carriers"
UNION ALL
SELECT
  "battle rifles"
UNION ALL
SELECT
  "bolt action rifles"
UNION ALL
SELECT
  "cannons"
UNION ALL
SELECT
  "combat packs"
UNION ALL
SELECT
  "decoys"
UNION ALL
SELECT
  "fully automatic firearms"
UNION ALL
SELECT
  "helicopters"
UNION ALL
SELECT
  "listening devices"
UNION ALL
SELECT
  "missiles"
UNION ALL
SELECT
  "ordnance"
UNION ALL
SELECT
  "propaganda"
UNION ALL
SELECT
  "rocket launchers"
UNION ALL
SELECT
  "semi-automatic firearms"
UNION ALL
SELECT
  "spycraft"
UNION ALL
SELECT
  "suicide bombers"
UNION ALL
SELECT
  "weapons of mass destruction"
UNION ALL
SELECT
  "atrocities"
UNION ALL
SELECT
  "brutality"
UNION ALL
SELECT
  "civilian targets"
UNION ALL
SELECT
  "crisis"
UNION ALL
SELECT
  "death"
UNION ALL
SELECT
  "destruction"
UNION ALL
SELECT
  "disabling injuries"
UNION ALL
SELECT
  "drafting"
UNION ALL
SELECT
  "exile"
UNION ALL
SELECT
  "family separation"
UNION ALL
SELECT
  "friendly fire"
UNION ALL
SELECT
  "horrific"
UNION ALL
SELECT
  "human rights violations"
UNION ALL
SELECT
  "loss of life/limb"
UNION ALL
SELECT
  "migrants"
UNION ALL
SELECT
  "no-fly zone"
UNION ALL
SELECT
  "political prisoners"
UNION ALL
SELECT
  "prisoners of war"
UNION ALL
SELECT
  "resettlement"
UNION ALL
SELECT
  "starvation"
UNION ALL
SELECT
  "unified state"
UNION ALL
SELECT
  "violence"
UNION ALL
SELECT
  "warmongering"
UNION ALL
SELECT
  "wartime prisons";
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.dim_whitelist` AS
SELECT
  DISTINCT term
FROM
  `flash-spot-353716.mataristim.dim_whitelist_tmp`;
  -- blacklist
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.dim_blacklist_tmp` AS
SELECT
  "armistice" AS term
UNION ALL
SELECT
  "cessation of hostilities"
UNION ALL
SELECT
  "conquer"
UNION ALL
SELECT
  "deescalation"
UNION ALL
SELECT
  "ending occupation"
UNION ALL
SELECT
  "healing"
UNION ALL
SELECT
  "mass destruction"
UNION ALL
SELECT
  "peacekeeping forces"
UNION ALL
SELECT
  "provisional government"
UNION ALL
SELECT
  "recovery"
UNION ALL
SELECT
  "retreat"
UNION ALL
SELECT
  "troop withdrawal"
UNION ALL
SELECT
  "unilateral"
UNION ALL
SELECT
  "bow out"
UNION ALL
SELECT
  "collapsed economy"
UNION ALL
SELECT
  "convention"
UNION ALL
SELECT
  "disengaged"
UNION ALL
SELECT
  "exile"
UNION ALL
SELECT
  "humanitarian aid"
UNION ALL
SELECT
  "migration"
UNION ALL
SELECT
  "peacetime"
UNION ALL
SELECT
  "rebuilding"
UNION ALL
SELECT
  "relinquished control"
UNION ALL
SELECT
  "surrender"
UNION ALL
SELECT
  "truce"
UNION ALL
SELECT
  "victory"
UNION ALL
SELECT
  "ceasefire"
UNION ALL
SELECT
  "conditional surrender"
UNION ALL
SELECT
  "covenant"
UNION ALL
SELECT
  "ended hostilities"
UNION ALL
SELECT
  "exiting"
UNION ALL
SELECT
  "make peace"
UNION ALL
SELECT
  "peace"
UNION ALL
SELECT
  "post-war era"
UNION ALL
SELECT
  "reconstruction"
UNION ALL
SELECT
  "repatriation"
UNION ALL
SELECT
  "treaty"
UNION ALL
SELECT
  "unconditional surrender"
UNION ALL
SELECT
  "withdrawal";
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.dim_blacklist` AS
SELECT
  DISTINCT term
FROM
  `flash-spot-353716.mataristim.dim_blacklist_tmp`;
  -- (1) identify target urls no covid19
  -- Create smaller source table based on desired date (2021-06-0=<) and no covid stories
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.source_urls` AS
SELECT
  *
FROM
  `gdelt-bq.gdeltv2.geg_gcnlapi`
WHERE
  DATE(date) >= "2021-01-01"
  AND lang = 'en';
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.source_urls_no_covid` AS
SELECT
  *
FROM
  `flash-spot-353716.mataristim.source_urls`
WHERE
  url NOT IN (
  SELECT
    DISTINCT url
  FROM
    `gdelt-bq.covid19.onlinenewsgeo`
  WHERE
    DATE(DateTime) >= "2021-01-01");
  -- (2) Create base table based on whitelist terms and blacklist terms
  -- base table contains ALL entities for urls with at least one term of interest with e.avgSalience >= 0.001
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.base_table` AS
WITH
  candidate_urls AS (
  SELECT
    DISTINCT DATE(date) AS yyyyymmdd,
    date,
    url,
    e.name,
    e.type,
    e.numMentions,
    e.avgSalience
  FROM
    `flash-spot-353716.mataristim.source_urls_no_covid`,
    UNNEST(entities) AS e
  WHERE
    LOWER(e.type) = "event"
    AND e.avgSalience >= 0.001 ),
  urls_whitelist AS (
  SELECT
    DISTINCT url
  FROM
    candidate_urls
  CROSS JOIN
    `flash-spot-353716.mataristim.dim_whitelist` AS w
  WHERE
    REGEXP_CONTAINS(name,term)),
  urls_blacklist AS (
  SELECT
    DISTINCT url
  FROM
    candidate_urls
  CROSS JOIN
    `flash-spot-353716.mataristim.dim_blacklist`
  WHERE
    REGEXP_CONTAINS(name,term)),
  select_urls AS (
  SELECT
    DISTINCT url
  FROM
    candidate_urls
  WHERE
    url NOT IN (
    SELECT
      DISTINCT url
    FROM
      urls_blacklist)
    AND url IN (
    SELECT
      DISTINCT url
    FROM
      urls_whitelist))
SELECT
  yyyyymmdd,
  date,
  u.url,
  name,
  type,
  numMentions,
  avgSalience
FROM
  candidate_urls AS u
INNER JOIN
  select_urls AS s
ON
  (u.url = s.url);
  -- base table contains ONLY event-instances of interest
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.base_table_select_events` AS
SELECT
  DISTINCT yyyyymmdd,
  date,
  url,
  name,
  type,
  numMentions,
  avgSalience
FROM
  `flash-spot-353716.mataristim.base_table` AS b
INNER JOIN
  `flash-spot-353716.mataristim.dim_whitelist` AS w
ON
  (b.name = w.term)
  AND b.avgSalience >= 0.001;
  -- (3) Summarize results per day
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.base_table_select_events_summary` AS
SELECT
  yyyyymmdd,
  COUNT(DISTINCT url) AS count_distinct_urls,
  SUM(numMentions) AS sum_numMentions,
  AVG(avgSalience) AS avg_avgSalience
FROM
  `flash-spot-353716.mataristim.base_table_select_events`
GROUP BY
  yyyyymmdd ;
  -- 534 rows for 534 days
  -- (4) Normalize avgSalience, numMentions, count_distinct_urls
  -- study metric-per-day
WITH
  approx_quantiles AS (
  SELECT
    APPROX_QUANTILES( count_distinct_urls, 10) AS count_distinct_urls_output,
    APPROX_QUANTILES( sum_numMentions, 10) AS sum_numMentions_output,
    APPROX_QUANTILES( avg_avgSalience, 10) AS avgSalience_output,
  FROM
    `flash-spot-353716.mataristim.base_table_select_events_summary`)
SELECT
  *
FROM
  approx_quantiles;
  -- ============================
  -- count_distinct_urls_output
  -- ============================
  -- 7208 (MIN)
  -- 9252
  -- 9989
  -- 10569
  -- 11187
  -- 11669
  -- 12196
  -- 12892
  -- 17052
  -- 22191
  -- 35820 (MAX)
  -- ============================
  -- sum_numMentions_output
  -- ============================
  -- 12487 (MIN)
  -- 16481
  -- 17943
  -- 18860
  -- 20121
  -- 21250
  -- 22623
  -- 25220
  -- 34455
  -- 43742
  -- 104370 (MAX)
  -- ============================
  -- avgSalience_output
  -- ============================
  -- 0.007543880100214743 (MIN)
  -- 0.0086129845329962727
  -- 0.0088859999139932946
  -- 0.0090365477806050275
  -- 0.0091887942794279445
  -- 0.0093216818475684131
  -- 0.0094713358902993663
  -- 0.00965867211703958
  -- 0.0099389416801666328
  -- 0.010255745949347179
  -- 0.012993181811421773 (MAX)
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.metric_normalization` AS
SELECT
  yyyyymmdd,
  count_distinct_urls,
  CASE
    WHEN count_distinct_urls < 9252 THEN 1
    WHEN count_distinct_urls >= 9252
  AND count_distinct_urls < 9989 THEN 2
    WHEN count_distinct_urls >= 9989 AND count_distinct_urls < 10569 THEN 3
    WHEN count_distinct_urls >= 10569
  AND count_distinct_urls < 11187 THEN 4
    WHEN count_distinct_urls >= 11187 AND count_distinct_urls < 11669 THEN 5
    WHEN count_distinct_urls >= 11669
  AND count_distinct_urls < 12196 THEN 6
    WHEN count_distinct_urls >= 12196 AND count_distinct_urls < 12892 THEN 7
    WHEN count_distinct_urls >= 12892
  AND count_distinct_urls < 17052 THEN 8
    WHEN count_distinct_urls >= 17052 AND count_distinct_urls < 22191 THEN 9
  ELSE
  10
END
  AS count_distinct_urls_normalized,
  sum_numMentions,
  CASE
    WHEN sum_numMentions < 16481 THEN 1
    WHEN sum_numMentions >= 16481
  AND sum_numMentions < 17943 THEN 2
    WHEN sum_numMentions >= 17943 AND sum_numMentions < 18860 THEN 3
    WHEN sum_numMentions >= 18860
  AND sum_numMentions < 20121 THEN 4
    WHEN sum_numMentions >= 20121 AND sum_numMentions < 21250 THEN 5
    WHEN sum_numMentions >= 21250
  AND sum_numMentions < 22623 THEN 6
    WHEN sum_numMentions >= 22623 AND sum_numMentions < 25220 THEN 7
    WHEN sum_numMentions >= 25220
  AND sum_numMentions < 34455 THEN 8
    WHEN sum_numMentions >= 34455 AND sum_numMentions < 43742 THEN 9
  ELSE
  10
END
  AS sum_numMentions_normalized,
  avg_avgSalience AS avgSalience,
  CASE
    WHEN avg_avgSalience < 0.0086129845329962727 THEN 1
    WHEN avg_avgSalience >= 0.0086129845329962727
  AND avg_avgSalience < 0.0088859999139932946 THEN 2
    WHEN avg_avgSalience >= 0.0088859999139932946 AND avg_avgSalience < 0.0090365477806050275 THEN 3
    WHEN avg_avgSalience >= 0.0090365477806050275
  AND avg_avgSalience < 0.0091887942794279445 THEN 4
    WHEN avg_avgSalience >= 0.0091887942794279445 AND avg_avgSalience < 0.0093216818475684131 THEN 5
    WHEN avg_avgSalience >= 0.0093216818475684131
  AND avg_avgSalience < 0.0094713358902993663 THEN 6
    WHEN avg_avgSalience >= 0.0094713358902993663 AND avg_avgSalience < 0.00965867211703958 THEN 7
    WHEN avg_avgSalience >= 0.00965867211703958
  AND avg_avgSalience < 0.0099389416801666328 THEN 8
    WHEN avg_avgSalience >= 0.0099389416801666328 AND avg_avgSalience < 0.010255745949347179 THEN 9
  ELSE
  10
END
  AS avgSalience_normalized
FROM
  `flash-spot-353716.mataristim.base_table_select_events_summary`;
  -- QA1 (count_distinct_urls_normalized)
SELECT
  count_distinct_urls_normalized,
  COUNT(1) AS count_rows
FROM
  `flash-spot-353716.mataristim.metric_normalization`
GROUP BY
  count_distinct_urls_normalized
ORDER BY
  count_distinct_urls_normalized;
  -- count_distinct_urls_normalized,count_rows
  -- 1,53
  -- 2,52
  -- 3,54
  -- 4,54
  -- 5,52
  -- 6,54
  -- 7,54
  -- 8,54
  -- 9,52
  -- 10,55
  -- QA2 (sum_numMentions_normalized)
SELECT
  sum_numMentions_normalized,
  COUNT(1) AS count_rows
FROM
  `flash-spot-353716.mataristim.metric_normalization`
GROUP BY
  sum_numMentions_normalized
ORDER BY
  sum_numMentions_normalized;
  -- sum_numMentions_normalized,count_rows
  -- 1,52
  -- 2,53
  -- 3,54
  -- 4,53
  -- 5,54
  -- 6,53
  -- 7,54
  -- 8,53
  -- 9,54
  -- 10,54
  -- QA3 (avgSalience_normalized)
SELECT
  avgSalience_normalized,
  COUNT(1) AS count_rows
FROM
  `flash-spot-353716.mataristim.metric_normalization`
GROUP BY
  avgSalience_normalized
ORDER BY
  avgSalience_normalized;
  -- avgSalience_normalized,count_rows
  -- 1,52
  -- 2,54
  -- 3,53
  -- 4,53
  -- 5,53
  -- 6,54
  -- 7,54
  -- 8,54
  -- 9,52
  -- 10,55
  -- Good
  -- (5) Unify daily summaries with normalized numbbers
CREATE OR REPLACE TABLE
  `flash-spot-353716.mataristim.base_table_select_events_summary_normalized` AS
SELECT
  DISTINCT s.yyyyymmdd,
  s.count_distinct_urls,
  n.count_distinct_urls_normalized,
  s.sum_numMentions,
  n.sum_numMentions_normalized,
  s.avg_avgSalience,
  n.avg_avgSalience_normalized
FROM
  `flash-spot-353716.mataristim.base_table_select_events_summary` AS s
INNER JOIN
  `flash-spot-353716.mataristim.metric_normalization` AS n
ON
  (s.yyyyymmdd = n.yyyyymmdd)
ORDER BY
  s.yyyyymmdd;
  -- 534
  -- Extract data for presentation
SELECT
  *
FROM
  `flash-spot-353716.mataristim.base_table_select_events_summary_normalized`
ORDER BY
  yyyyymmdd;