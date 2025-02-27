; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_jbd2_block_tag_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_jbd2_block_tag_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32)* @jbd2_block_tag_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_block_tag_csum_verify(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = bitcast %struct.TYPE_10__* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_9__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @cpu_to_be32(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast i64* %12 to i8*
  %27 = call i32 @jbd2_chksum(%struct.TYPE_9__* %22, i32 %25, i8* %26, i32 8)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jbd2_chksum(%struct.TYPE_9__* %28, i32 %29, i8* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i64 @jbd2_has_feature_csum3(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %19
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @cpu_to_be32(i32 %42)
  %44 = icmp eq i64 %41, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %19
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @cpu_to_be16(i32 %50)
  %52 = icmp eq i64 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %38, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_9__*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @jbd2_chksum(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i64 @jbd2_has_feature_csum3(%struct.TYPE_9__*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
