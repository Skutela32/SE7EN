export type AppTypes = "app_towtruck" | "app_delivery" | null;

export type PlayerProfileProps = {
  character: string;
  characterName: string;
  photo: string;
  level: number;
  exp: number;
  nextLeveLExp: number;
  completedTasks: number[];
};

export type TopRankProps = PlayerProfileProps;

export type AcceptableJobProps = {
  id: number;
  location: string;
  reward: number;
  exp: number;
};

export type JobSettingsProps = {
  maxExp: number;
  ranks: number[];
};

export type CallsForHelpProps = {
  helpId: number;
  location: string;
  coords: any;
};
