; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32 }
%struct.qib_ah = type { %struct.ib_ah_attr }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*, %struct.ib_ah_attr*)* @qib_modify_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_modify_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.qib_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %8 = call %struct.qib_ah* @to_iah(%struct.ib_ah* %7)
  store %struct.qib_ah* %8, %struct.qib_ah** %6, align 8
  %9 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %10 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %13 = call i64 @qib_check_ah(i32 %11, %struct.ib_ah_attr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.qib_ah*, %struct.qib_ah** %6, align 8
  %20 = getelementptr inbounds %struct.qib_ah, %struct.qib_ah* %19, i32 0, i32 0
  %21 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %22 = bitcast %struct.ib_ah_attr* %20 to i8*
  %23 = bitcast %struct.ib_ah_attr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.qib_ah* @to_iah(%struct.ib_ah*) #1

declare dso_local i64 @qib_check_ah(i32, %struct.ib_ah_attr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
