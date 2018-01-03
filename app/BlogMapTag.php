<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogMapTag extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = 'blog_map_tags';
    }

}