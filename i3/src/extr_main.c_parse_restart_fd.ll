; ModuleID = '/home/carl/AnghaBench/i3/src/extr_main.c_parse_restart_fd.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_main.c_parse_restart_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"_I3_RESTART_FD\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Malformed _I3_RESTART_FD \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_restart_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_restart_fd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %18

8:                                                ; preds = %0
  store i64 -1, i64* %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @parse_long(i8* %9, i64* %3, i32 10)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @ELOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %1, align 4
  br label %18

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @parse_long(i8*, i64*, i32) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
