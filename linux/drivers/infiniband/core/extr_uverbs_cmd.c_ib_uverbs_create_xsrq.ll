; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_xsrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_xsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_xsrq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_create_xsrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_xsrq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_xsrq, align 4
  %5 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %6 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %7 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %6, %struct.ib_uverbs_create_xsrq* %4, i32 4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %14 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %15 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %14, i32 0, i32 0
  %16 = call i32 @__uverbs_create_xsrq(%struct.uverbs_attr_bundle* %13, %struct.ib_uverbs_create_xsrq* %4, i32* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_xsrq*, i32) #1

declare dso_local i32 @__uverbs_create_xsrq(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_xsrq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
