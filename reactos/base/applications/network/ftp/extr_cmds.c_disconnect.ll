; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@cout = external dso_local global i64, align 8
@data = external dso_local global i32, align 4
@proxy = common dso_local global i32 0, align 4
@macnum = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disconnect(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i64, i64* @connected, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %2
  %9 = call i32 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @cout, align 8
  store i64 0, i64* @connected, align 8
  store i32 -1, i32* @data, align 4
  %10 = load i32, i32* @proxy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i64 0, i64* @macnum, align 8
  br label %13

13:                                               ; preds = %7, %12, %8
  ret void
}

declare dso_local i32 @command(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
