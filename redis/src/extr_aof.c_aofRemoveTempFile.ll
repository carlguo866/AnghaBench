; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_aofRemoveTempFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_aofRemoveTempFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"temp-rewriteaof-bg-%d.aof\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"temp-rewriteaof-%d.aof\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aofRemoveTempFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  store i64 %0, i64* %2, align 8
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @snprintf(i8* %4, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %9 = call i32 @unlink(i8* %8)
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %11 = load i64, i64* %2, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @snprintf(i8* %10, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i32 @unlink(i8* %14)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
