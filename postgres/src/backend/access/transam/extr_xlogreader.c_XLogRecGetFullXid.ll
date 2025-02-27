; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_XLogRecGetFullXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_XLogRecGetFullXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogRecGetFullXid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i64 (...) @AmStartupProcess()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @IsUnderPostmaster, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @XLogRecGetXid(i32* %16)
  store i64 %17, i64* %3, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @XidFromFullTransactionId(i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EpochFromFullTransactionId(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @FullTransactionIdFromEpochAndXid(i32 %36, i64 %37)
  ret i32 %38
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @AmStartupProcess(...) #1

declare dso_local i64 @XLogRecGetXid(i32*) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @EpochFromFullTransactionId(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @FullTransactionIdFromEpochAndXid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
