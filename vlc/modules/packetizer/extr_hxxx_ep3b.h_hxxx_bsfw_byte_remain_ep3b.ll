; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_ep3b.h_hxxx_bsfw_byte_remain_ep3b.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_ep3b.h_hxxx_bsfw_byte_remain_ep3b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.hxxx_bsfw_ep3b_ctx_s = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @hxxx_bsfw_byte_remain_ep3b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hxxx_bsfw_byte_remain_ep3b(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.hxxx_bsfw_ep3b_ctx_s*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.hxxx_bsfw_ep3b_ctx_s*
  store %struct.hxxx_bsfw_ep3b_ctx_s* %7, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %8 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %9 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @hxxx_ep3b_total_size(i64 %23, i64 %26)
  %28 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %29 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %20, %12, %1
  %31 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %32 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %35 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %40 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %3, align 8
  %43 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %38
  %48 = phi i64 [ %45, %38 ], [ 0, %46 ]
  ret i64 %48
}

declare dso_local i64 @hxxx_ep3b_total_size(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
