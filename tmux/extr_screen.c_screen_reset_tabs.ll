; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_reset_tabs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_reset_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"bit_alloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_reset_tabs(%struct.screen* %0) #0 {
  %2 = alloca %struct.screen*, align 8
  %3 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %2, align 8
  %4 = load %struct.screen*, %struct.screen** %2, align 8
  %5 = getelementptr inbounds %struct.screen, %struct.screen* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @free(i32* %6)
  %8 = load %struct.screen*, %struct.screen** %2, align 8
  %9 = call i32 @screen_size_x(%struct.screen* %8)
  %10 = call i32* @bit_alloc(i32 %9)
  %11 = load %struct.screen*, %struct.screen** %2, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  store i32 8, i32* %3, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.screen*, %struct.screen** %2, align 8
  %20 = call i32 @screen_size_x(%struct.screen* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.screen*, %struct.screen** %2, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @bit_set(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %3, align 4
  br label %17

31:                                               ; preds = %17
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @bit_alloc(i32) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @bit_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
