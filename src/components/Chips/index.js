import { SiFlutter } from "react-icons/si";
import { FaDartLang } from "react-icons/fa6";
import { FaAndroid } from "react-icons/fa6";
import { FaApple } from "react-icons/fa";
import { RiJavascriptFill } from "react-icons/ri";
import { FaNode } from "react-icons/fa6";
import { FaJava } from "react-icons/fa6";
import { FaReact } from "react-icons/fa6";
import { SiKotlin } from "react-icons/si";

const Chips = ({ type }) => {
  if (type === "Flutter") {
    return <FlutterChip />;
  } else if (type === "Dart") {
    return <DartChip />;
  } else if (type === "Android") {
    return <AndroidChip />;
  } else if (type === "iOS") {
    return <IosChip />;
  } else if (type === "JavaScript") {
    return <JavascriptChip />;
  } else if (type === "NodeJS") {
    return <NodeChip />;
  } else if (type === "Java") {
    return <JavaChip />;
  } else if (type === "ReactNative") {
    return <ReactNativeChip />;
  } else if (type === "Kotlin") {
    return <KotlinChip />;
  } else {
    return <div></div>;
  }
};

const FlutterChip = () => {
  return (
    <div className="rounded-full flex items-center bg-cyan-500 text-base px-3 py-1">
      <SiFlutter className="mx-1" />
      Flutter
    </div>
  );
};

const DartChip = () => {
  return (
    <div className="rounded-full flex items-center bg-cyan-200 text-base text-slate-900 px-3 py-1">
      <FaDartLang className="mx-1" />
      Dart
    </div>
  );
};

const AndroidChip = () => {
  return (
    <div className="rounded-full flex items-center bg-green-400 text-base px-3 py-1">
      <FaAndroid className="mx-1" />
      Android
    </div>
  );
};
const IosChip = () => {
  return (
    <div className="rounded-full flex items-center bg-white text-base text-black px-3 py-1">
      <FaApple className="mx-1" />
      iOS
    </div>
  );
};

const JavascriptChip = () => {
  return (
    <div className="rounded-full flex items-center bg-yellow-200 text-base text-black px-3 py-1">
      <RiJavascriptFill className="mx-1" />
      JavaScript
    </div>
  );
};

const NodeChip = () => {
  return (
    <div className="rounded-full flex items-center bg-lime-500 text-base px-3 py-1">
      <FaNode className="mx-1" />
      NodeJS
    </div>
  );
};

const JavaChip = () => {
  return (
    <div className="rounded-full flex items-center bg-slate-600 text-base px-3 py-1">
      <FaJava className="mx-1" />
      Java
    </div>
  );
};

const ReactNativeChip = () => {
  return (
    <div className="rounded-full flex items-center bg-cyan-500 text-base px-3 py-1">
      <FaReact className="mx-1" />
      ReactNative
    </div>
  );
};

const KotlinChip = () => {
  return (
    <div className="rounded-full flex items-center bg-orange-300 text-base px-3 py-1">
      <SiKotlin className="mx-1" />
      Kotlin
    </div>
  );
};

export default Chips;
