; ModuleID = '/home/carl/AnghaBench/nuklear/demo/sdl_opengl2/extr_nuklear_sdl_gl2.h_nk_sdl_clipboard_paste.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/sdl_opengl2/extr_nuklear_sdl_gl2.h_nk_sdl_clipboard_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_text_edit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nk_text_edit*)* @nk_sdl_clipboard_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_sdl_clipboard_paste(i32 %0, %struct.nk_text_edit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nk_text_edit*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nk_text_edit* %1, %struct.nk_text_edit** %4, align 8
  %6 = call i8* (...) @SDL_GetClipboardText()
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.nk_text_edit*, %struct.nk_text_edit** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @nk_strlen(i8* %12)
  %14 = call i32 @nk_textedit_paste(%struct.nk_text_edit* %10, i8* %11, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %3, align 4
  ret void
}

declare dso_local i8* @SDL_GetClipboardText(...) #1

declare dso_local i32 @nk_textedit_paste(%struct.nk_text_edit*, i8*, i32) #1

declare dso_local i32 @nk_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
