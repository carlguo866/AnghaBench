; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt76_init_beacon_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt76_init_beacon_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32* }

@MT_BEACON_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*)* @mt76_init_beacon_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_init_beacon_offsets(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %7 = load i32, i32* @MT_BEACON_BASE, align 4
  store i32 %7, i32* %3, align 4
  %8 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %22, 64
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 4
  %26 = mul nsw i32 8, %25
  %27 = shl i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %12
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @MT_BCN_OFFSET(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %42, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %38

53:                                               ; preds = %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #2

declare dso_local i32 @MT_BCN_OFFSET(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
