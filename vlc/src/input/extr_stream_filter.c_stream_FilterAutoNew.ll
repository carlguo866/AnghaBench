; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_filter.c_stream_FilterAutoNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_filter.c_stream_FilterAutoNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"stream filter added to %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stream_FilterAutoNew(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @vlc_stream_FilterNew(i32* %9, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %23

14:                                               ; preds = %8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @msg_Dbg(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %13, %5
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32* @vlc_stream_FilterNew(i32*, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
