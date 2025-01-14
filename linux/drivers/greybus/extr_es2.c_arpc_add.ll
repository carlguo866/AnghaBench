; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32, i32 }
%struct.arpc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*, %struct.arpc*)* @arpc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arpc_add(%struct.es2_ap_dev* %0, %struct.arpc* %1) #0 {
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca %struct.arpc*, align 8
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %3, align 8
  store %struct.arpc* %1, %struct.arpc** %4, align 8
  %5 = load %struct.arpc*, %struct.arpc** %4, align 8
  %6 = getelementptr inbounds %struct.arpc, %struct.arpc* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %8 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = call i32 @cpu_to_le16(i32 %9)
  %12 = load %struct.arpc*, %struct.arpc** %4, align 8
  %13 = getelementptr inbounds %struct.arpc, %struct.arpc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.arpc*, %struct.arpc** %4, align 8
  %17 = getelementptr inbounds %struct.arpc, %struct.arpc* %16, i32 0, i32 1
  %18 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %19 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %18, i32 0, i32 0
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
