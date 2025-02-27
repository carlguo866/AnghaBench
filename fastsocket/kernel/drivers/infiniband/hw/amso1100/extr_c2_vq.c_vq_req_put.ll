; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_req_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_req_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_vq_req = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_req_put(%struct.c2_dev* %0, %struct.c2_vq_req* %1) #0 {
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_vq_req*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  store %struct.c2_vq_req* %1, %struct.c2_vq_req** %4, align 8
  %5 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %6 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %5, i32 0, i32 1
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %11 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %16 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %17 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @vq_repbuf_free(%struct.c2_dev* %15, i8* %19)
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.c2_vq_req*, %struct.c2_vq_req** %4, align 8
  %23 = call i32 @kfree(%struct.c2_vq_req* %22)
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, i8*) #1

declare dso_local i32 @kfree(%struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
