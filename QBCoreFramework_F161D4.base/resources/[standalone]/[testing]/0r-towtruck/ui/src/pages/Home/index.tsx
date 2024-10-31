import { useEffect } from "react";
import type { AppTypes } from "../../types/BasicTypes";
import Short_TowTruck from "../../components/Apps/ShortCut/TowTruck";
import Short_Delivery from "../../components/Apps/ShortCut/Delivery";
import useData from "../../hooks/useData";
import AppTrowTuck from "../../components/Apps/Exe/AppTrowTuck";
import "./index.sass";
import classNames from "classnames";
import BoilerPlate from "../../components/Apps/BoilerPlate";
import { Panel } from "../../components/Panel";
import { useVisibility } from "../../hooks/useVisibility";
import { isEnvBrowser } from "../../utils/misc";
import { fetchNui } from "../../utils/fetchNui";

export const Home: React.FC = () => {
  const { visible, setVisible } = useVisibility();
  const { runningApp, isAppFullScreen, Apps } = useData();

  useEffect(() => {
    if (!visible) return;

    const keyHandler = (e: KeyboardEvent) => {
      if (["Escape"].includes(e.code)) {
        if (!isEnvBrowser()) {
          fetchNui("ui:hideFrame", null, true);
          setVisible(false);
        }
      }
    };
    window.addEventListener("keydown", keyHandler);
    return () => window.removeEventListener("keydown", keyHandler);
  }, [visible, setVisible]);

  const renderComponent = (key: AppTypes) => {
    switch (key) {
      case "app_delivery":
        return <Short_Delivery key={key} />;
      case "app_towtruck":
        return <Short_TowTruck key={key} />;
      default:
        return null;
    }
  };

  const renderApp = (app: AppTypes) => {
    switch (app) {
      case "app_towtruck":
        return <AppTrowTuck />;

      default:
        return null;
    }
  };

  return (
    <Panel>
      <div className="w-full h-full">
        {!runningApp && (
          <div className="w-full h-full relative p-4 mt-6 ml-6 flex gap-8">
            {Object.values(Apps).map((key) => renderComponent(key as AppTypes))}
          </div>
        )}
        {runningApp && (
          <div
            className={classNames(
              "absolute top-0 left-0 w-full h-full app-container fadeInScaleUp transition-[padding]",
              {
                hidden: !runningApp,
                "p-4": !isAppFullScreen,
              }
            )}
          >
            <div className="w-full h-full">
              <BoilerPlate>{renderApp(runningApp)}</BoilerPlate>
            </div>
          </div>
        )}
      </div>
    </Panel>
  );
};
