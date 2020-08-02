class CoinManager

  def initialize(accepted_coins, inventory)
    @accepted_coins = accepted_coins
    @inventory = inventory
  end

  def make_change(amount)
    make_change_and_remove(amount, true)
  end

  def make_change_and_remove(amount, remove_coins_from_inventory)
    # this._inventory.sort((a, b) => a.coin.getValue() - b.coin.getValue()).reverse();

    # let coinsToReturn = [];
    # for(let inventory of this._inventory) {
    #     let quantityToReturn = Math.floor(amount / inventory.coin.getValue());
    # if(quantityToReturn > inventory.quantity) {
    #     quantityToReturn = inventory.quantity;
    # }
    #
    # for(let i = 0; i < quantityToReturn; i ++) {
    #     coinsToReturn.push(inventory.coin);
    # }
    #
    # if(removeCoinsFromInventory) {
    #     inventory.quantity -= quantityToReturn;
    # }
    #
    # amount -= inventory.coin.getValue() * quantityToReturn;
    #
    # if(amount === 0) {
    #     break;
    # }
    # }
    #
    # return coinsToReturn;

  end

  def get_coin_for(object)
    # @accepted_coins.find(acceptedCoin => object.equals(acceptedCoin));
  end

  def add_coin(object)
    # let matchedCoin = this.getCoinFor(object);
    #
    # if(_.isUndefined(matchedCoin)) {
    #     return false;
    # }
    #
    # let matchedInventory = this._inventory.find(inventoryCoin => inventoryCoin.coin.equals(matchedCoin));
    #
    # if(_.isUndefined(matchedInventory)) {
    #     this._inventory.push({
    #                              coin: matchedCoin,
    #                              quantity: 1
    #                          });
    # } else {
    #     matchedInventory.quantity++;
    #
    # }
    #
    # return true;
  end

  # This assumes that each coin is divisible by the smallest coin. Given that then in order to be able to make
  # change for any given product and inserted coins then you need to be able to make change for every multiple
  # of the smallest coin such that: (n * smallestCoinValue) <= (largestCoinValue - smallestCoinValue)
  def can_make_change
    # let acceptedCoinsByValue = _.sortBy(this._acceptedCoins, (coin) => coin.getValue());
    # let smallestCoinValue = acceptedCoinsByValue.shift().getValue();
    # let largestCoinValue = acceptedCoinsByValue.pop().getValue();
    # let changeAmount = smallestCoinValue;
    # while(changeAmount <= largestCoinValue - smallestCoinValue) {
    #
    #   let coins = this._makeChange(changeAmount, false);
    # let totalValue = coins.reduce((sum, coin) => sum + coin.getValue(), 0);
    #
    # if(totalValue != changeAmount) {
    #   return false;
    # }
    #
    # changeAmount += smallestCoinValue;
    # }
    #
    # return true;

  end

  def get_coin_for

  end

end

