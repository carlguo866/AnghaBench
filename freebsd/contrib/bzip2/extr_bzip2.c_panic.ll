; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_panic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to:\0A\09bzip2-devel@sourceware.org\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** @progName, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8* %4, i8* %5)
  %7 = call i32 (...) @showFileNames()
  %8 = call i32 @cleanUpAndFail(i32 3)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @showFileNames(...) #1

declare dso_local i32 @cleanUpAndFail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
