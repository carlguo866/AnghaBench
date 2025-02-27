; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ip_create_ratedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ip_create_ratedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.comm_reply = type { i32, i32 }
%struct.ip_rate_key = type { i32*, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.ip_rate_key*, %struct.ip_rate_key*, i32, i32 }
%struct.ip_rate_data = type { i32*, %struct.TYPE_2__, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.infra_cache*, %struct.comm_reply*, i32)* @infra_ip_create_ratedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infra_ip_create_ratedata(%struct.infra_cache* %0, %struct.comm_reply* %1, i32 %2) #0 {
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca %struct.comm_reply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_rate_key*, align 8
  %9 = alloca %struct.ip_rate_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store %struct.comm_reply* %1, %struct.comm_reply** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %11 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %10, i32 0, i32 1
  %12 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %13 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hash_addr(i32* %11, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = call i64 @calloc(i32 1, i32 48)
  %17 = inttoptr i64 %16 to %struct.ip_rate_key*
  store %struct.ip_rate_key* %17, %struct.ip_rate_key** %8, align 8
  %18 = call i64 @calloc(i32 1, i32 48)
  %19 = inttoptr i64 %18 to %struct.ip_rate_data*
  store %struct.ip_rate_data* %19, %struct.ip_rate_data** %9, align 8
  %20 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %21 = icmp ne %struct.ip_rate_key* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %24 = icmp ne %struct.ip_rate_data* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %27 = call i32 @free(%struct.ip_rate_key* %26)
  %28 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %29 = bitcast %struct.ip_rate_data* %28 to %struct.ip_rate_key*
  %30 = call i32 @free(%struct.ip_rate_key* %29)
  br label %77

31:                                               ; preds = %22
  %32 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %33 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %36 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %38 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %41 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %43 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = call i32 @lock_rw_init(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %48 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %51 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %52 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.ip_rate_key* %50, %struct.ip_rate_key** %53, align 8
  %54 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %55 = bitcast %struct.ip_rate_data* %54 to %struct.ip_rate_key*
  %56 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %57 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.ip_rate_key* %55, %struct.ip_rate_key** %58, align 8
  %59 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %60 = getelementptr inbounds %struct.ip_rate_data, %struct.ip_rate_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %65 = getelementptr inbounds %struct.ip_rate_data, %struct.ip_rate_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %69 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ip_rate_key*, %struct.ip_rate_key** %8, align 8
  %73 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %72, i32 0, i32 1
  %74 = load %struct.ip_rate_data*, %struct.ip_rate_data** %9, align 8
  %75 = bitcast %struct.ip_rate_data* %74 to %struct.ip_rate_key*
  %76 = call i32 @slabhash_insert(i32 %70, i32 %71, %struct.TYPE_2__* %73, %struct.ip_rate_key* %75, i32* null)
  br label %77

77:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @hash_addr(i32*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.ip_rate_key*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.TYPE_2__*, %struct.ip_rate_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
