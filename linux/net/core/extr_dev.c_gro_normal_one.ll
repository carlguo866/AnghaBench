; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_gro_normal_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_gro_normal_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i64, i32 }
%struct.sk_buff = type { i32 }

@gro_normal_batch = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.napi_struct*, %struct.sk_buff*)* @gro_normal_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gro_normal_one(%struct.napi_struct* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %8 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %7, i32 0, i32 1
  %9 = call i32 @list_add_tail(i32* %6, i32* %8)
  %10 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @gro_normal_batch, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %18 = call i32 @gro_normal_list(%struct.napi_struct* %17)
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @gro_normal_list(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
