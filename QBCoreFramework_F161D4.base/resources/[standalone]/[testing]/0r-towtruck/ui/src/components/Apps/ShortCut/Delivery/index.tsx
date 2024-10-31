import React from "react";
import useLocales from "../../../../hooks/useLocales";
import { fetchNui } from "../../../../utils/fetchNui";

const App_Delivery: React.FC = () => {
  const { locale } = useLocales();

  const handleClick = (e: React.MouseEvent<HTMLDivElement>) => {
    e.preventDefault();
    fetchNui("nui:OpenDeliveryApp", null, true);
  };

  return (
    <>
      <div
        onClick={handleClick}
        className="flex flex-col items-center cursor-pointer"
        style={{
          width: "84px",
          height: "88px",
        }}
      >
        <div
          style={{
            width: "66px",
            height: "54px",
          }}
        >
          <img src="images/icons/app-icon.png" alt="app-icon" />
        </div>
        <div className="text-center mt-1">
          <h1
            className="text-white text-xs font-bold"
            style={{ textShadow: "0px 0px 1.6px rgba(0, 0, 0, 0.85)" }}
          >
            {locale.text_app_delivery}
          </h1>
        </div>
      </div>
    </>
  );
};

export default App_Delivery;
