; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_init_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_init_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @init_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sb(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @atf_process_stream_init_inherit(i32* %9)
  store i32 %10, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @atf_process_stream_init_redirect_path(i32* %12, i32* %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @atf_process_stream_init_inherit(i32*) #1

declare dso_local i32 @atf_process_stream_init_redirect_path(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
