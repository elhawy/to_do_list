<?php

namespace App\Exceptions;

use Illuminate\Http\Response;

class MultipleInProgressItemsException extends AbstractCustomeException
{
    protected function setErrorCode()
    {
        $this->errorcode = ErrorCodes::TRACK_MULTIPLE_ITEMS;
    }

    protected function setStatusCode()
    {
        $this->statusCode = Response::HTTP_INTERNAL_SERVER_ERROR;
    }

    protected function setMessage()
    {
        $this->message = trans('messages.track_multiple_items');
    }
}
