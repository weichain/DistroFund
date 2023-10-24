var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
// Concrete component
var BasicPizza = /** @class */ (function () {
    function BasicPizza() {
    }
    BasicPizza.prototype.getDescription = function () {
        return "Pizza with dough and tomato sauce";
    };
    BasicPizza.prototype.cost = function () {
        return 10;
    };
    return BasicPizza;
}());
// Decorator base class
var ToppingDecorator = /** @class */ (function () {
    function ToppingDecorator(pizza) {
        this.pizza = pizza;
    }
    ToppingDecorator.prototype.getDescription = function () {
        return this.pizza.getDescription();
    };
    ToppingDecorator.prototype.cost = function () {
        return this.pizza.cost();
    };
    return ToppingDecorator;
}());
// Concrete decorators
var CheeseDecorator = /** @class */ (function (_super) {
    __extends(CheeseDecorator, _super);
    function CheeseDecorator() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    CheeseDecorator.prototype.getDescription = function () {
        return this.pizza.getDescription() + ", Cheese";
    };
    CheeseDecorator.prototype.cost = function () {
        return this.pizza.cost() + 2;
    };
    return CheeseDecorator;
}(ToppingDecorator));
var PepperoniDecorator = /** @class */ (function (_super) {
    __extends(PepperoniDecorator, _super);
    function PepperoniDecorator() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    PepperoniDecorator.prototype.getDescription = function () {
        return this.pizza.getDescription() + ", Pepperoni";
    };
    PepperoniDecorator.prototype.cost = function () {
        return this.pizza.cost() + 3;
    };
    return PepperoniDecorator;
}(ToppingDecorator));
// Usage
var basicPizza = new BasicPizza();
var pizzaWithCheese = new CheeseDecorator(basicPizza);
var pizzaWithPepperoni = new PepperoniDecorator(basicPizza);
var pizzaWithCheeseAndPepperoni = new PepperoniDecorator(pizzaWithCheese);
console.log("Basic Pizza: " + basicPizza.getDescription() + ", Cost: $" + basicPizza.cost());
console.log("Pizza with Cheese: " + pizzaWithCheese.getDescription() + ", Cost: $" + pizzaWithCheese.cost());
console.log("Pizza with Pepperoni: " + pizzaWithPepperoni.getDescription() + ", Cost: $" + pizzaWithPepperoni.cost());
console.log("Pizza with Cheese and Pepperoni: " + pizzaWithCheeseAndPepperoni.getDescription() + ", Cost: $" + pizzaWithCheeseAndPepperoni.cost());
