; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_read_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_read_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = common dso_local global i32* null, align 8
@h = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_read_key() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = load i32*, i32** @e, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32*, i32** @h, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @rl_initialize()
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i32*, i32** @e, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %12 = call i32 @el_getc(i32* %10, i8* %11)
  ret i32 %12
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i32 @el_getc(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
