; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_aofReadDiffFromParent.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_aofReadDiffFromParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @aofReadDiffFromParent() #0 {
  %1 = alloca [65536 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %6 = getelementptr inbounds [65536 x i8], [65536 x i8]* %1, i64 0, i64 0
  %7 = call i64 @read(i32 %5, i8* %6, i32 65536)
  store i64 %7, i64* %2, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %11 = getelementptr inbounds [65536 x i8], [65536 x i8]* %1, i64 0, i64 0
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @sdscatlen(i32 %10, i8* %11, i64 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %3, align 8
  br label %4

17:                                               ; preds = %4
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
