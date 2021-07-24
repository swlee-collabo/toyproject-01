import React from "react";

interface GreetingsProps {
	name: string;
	mark: string;
	optional?: string; // 선택적인 경우
	onClick?: (name: string) => void; // 함수를 props로 받을 경우
};

function Greetings({name, mark, optional, onClick}: GreetingsProps) {
	return (<div>Hello, {name} {mark}</div>);
}

Greetings.defaultProps = {
    name: 'NoName',
	mark: '!',
};

export default Greetings;