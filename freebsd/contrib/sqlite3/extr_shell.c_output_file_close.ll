; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_output_file_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_output_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_file_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_file_close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** @stdout, align 8
  %8 = icmp ne i32* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** @stderr, align 8
  %12 = icmp ne i32* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fclose(i32* %14)
  br label %16

16:                                               ; preds = %13, %9, %5, %1
  ret void
}

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
