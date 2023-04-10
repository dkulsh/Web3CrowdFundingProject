import { useEffect, useState } from "react";
import { setInterval, clearInterval } from "timers";
import TimerView from "./timer.view";

export function TimerController(props: any) {
  const [timerVal, setTimerVal] = useState(props.timerVal);
  useEffect(() => {
    const intervalId = setInterval(() => {
      setTimerVal((timerVal: number) => timerVal - 1);
    }, 1000);
    return () => clearInterval(intervalId);
  }, []);

  return <TimerView timerVal={timerVal}></TimerView>;
}
