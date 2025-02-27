; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_select_mss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_select_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, %struct.TYPE_2__*, %struct.dst_entry* }
%struct.TYPE_2__ = type { i32* }
%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_sock_select_mss(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %8 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %7, i32 0, i32 2
  %9 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %9, %struct.dst_entry** %6, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = call i32 @dst_metric_advmss(%struct.dst_entry* %10)
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 40
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 %21, 40
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %30 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 40
  %37 = icmp ult i32 %28, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 40
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %38, %25
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, 40
  %55 = call i32 @cxgbi_sock_find_best_mtu(%struct.cxgbi_sock* %50, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @cxgbi_sock_find_best_mtu(%struct.cxgbi_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
