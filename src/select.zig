pub const SelectClause = struct {
    selectable: []u8,
    fromable: ?FromClause = null,

    pub fn from(self: SelectClause, table: []u8) SelectClause {
        self.fromable = FromClause{ .table = table };
        return self;
    }
};

pub const FromClause = struct {
    table: []u8,
};
