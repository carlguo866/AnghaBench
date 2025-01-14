; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_rq.h_vnic_rq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_rq.h_vnic_rq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.vnic_rq_buf* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnic_rq_buf = type { i32, i32, i32, %struct.vnic_rq_buf*, i32, i32, i8* }

@VNIC_RQ_RETURN_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, i8*, i32, i32, i32, i32)* @vnic_rq_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_rq_post(%struct.vnic_rq* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vnic_rq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnic_rq_buf*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.vnic_rq*, %struct.vnic_rq** %7, align 8
  %15 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %14, i32 0, i32 2
  %16 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %15, align 8
  store %struct.vnic_rq_buf* %16, %struct.vnic_rq_buf** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %19 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %22 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %25 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %28 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %31 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %33 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %32, i32 0, i32 3
  %34 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %33, align 8
  store %struct.vnic_rq_buf* %34, %struct.vnic_rq_buf** %13, align 8
  %35 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %36 = load %struct.vnic_rq*, %struct.vnic_rq** %7, align 8
  %37 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %36, i32 0, i32 2
  store %struct.vnic_rq_buf* %35, %struct.vnic_rq_buf** %37, align 8
  %38 = load %struct.vnic_rq*, %struct.vnic_rq** %7, align 8
  %39 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %44 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %6
  %49 = call i32 (...) @wmb()
  %50 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %13, align 8
  %51 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vnic_rq*, %struct.vnic_rq** %7, align 8
  %54 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @iowrite32(i32 %52, i32* %56)
  br label %58

58:                                               ; preds = %48, %6
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
