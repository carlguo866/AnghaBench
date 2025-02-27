; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_query_pending = type { i32, i32, i32, i32, %struct.gas_query* }
%struct.gas_query = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gas_query_pending* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gas_query_pending*, i32)* @gas_query_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_query_free(%struct.gas_query_pending* %0, i32 %1) #0 {
  %3 = alloca %struct.gas_query_pending*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gas_query*, align 8
  store %struct.gas_query_pending* %0, %struct.gas_query_pending** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %7 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %6, i32 0, i32 4
  %8 = load %struct.gas_query*, %struct.gas_query** %7, align 8
  store %struct.gas_query* %8, %struct.gas_query** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %13 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %12, i32 0, i32 3
  %14 = call i32 @dl_list_del(i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.gas_query*, %struct.gas_query** %5, align 8
  %17 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.gas_query*, %struct.gas_query** %5, align 8
  %22 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.gas_query_pending*, %struct.gas_query_pending** %24, align 8
  %26 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %27 = icmp eq %struct.gas_query_pending* %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.gas_query*, %struct.gas_query** %5, align 8
  %30 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @radio_work_done(%struct.TYPE_2__* %31)
  %33 = load %struct.gas_query*, %struct.gas_query** %5, align 8
  %34 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %33, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %28, %20, %15
  %36 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %37 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpabuf_free(i32 %38)
  %40 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %41 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpabuf_free(i32 %42)
  %44 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %45 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wpabuf_free(i32 %46)
  %48 = load %struct.gas_query_pending*, %struct.gas_query_pending** %3, align 8
  %49 = call i32 @os_free(%struct.gas_query_pending* %48)
  ret void
}

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @radio_work_done(%struct.TYPE_2__*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(%struct.gas_query_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
