<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Mail\Mailer;
use App\Mail\ContactMail;

class PagesController extends Controller
{
    public function getHome()
    {
        return view('pages.home');
    }

    public function getWork()
    {
        return view('pages.work');
    }

    public function getAbout()
    {
        return view('pages.about');
    }

    public function getBlog()
    {
        return view('pages.blog');
    }

    public function getContact()
    {
        return view('pages.contact');
    }

    public function getSelectWork()
    {
        return view('pages.selectwork');
    }

    public function getSelectBlog()
    {
        return view('pages.selectblog');
    }

    public function postContactMail(Request $request, Mailer $mailer)
    {
        $this->validate($request, [
            'name'    => 'required|min:3|max:50',
            'email'   => 'required|email|min:3|max:100',
            'subject' => 'required|min:3|max:50',
            'message' => 'required|min:3|max:100',
        ]);

        $mailer
            ->to($request['email'])
            ->send(new ContactMail($request['subject']));
        return redirect()->back()->with(['status' => 'Email Send Success']);
    }
}
