; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32 }
%struct.arpc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*, %struct.arpc*)* @arpc_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arpc_del(%struct.es2_ap_dev* %0, %struct.arpc* %1) #0 {
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca %struct.arpc*, align 8
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %3, align 8
  store %struct.arpc* %1, %struct.arpc** %4, align 8
  %5 = load %struct.arpc*, %struct.arpc** %4, align 8
  %6 = getelementptr inbounds %struct.arpc, %struct.arpc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.arpc*, %struct.arpc** %4, align 8
  %11 = getelementptr inbounds %struct.arpc, %struct.arpc* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.arpc*, %struct.arpc** %4, align 8
  %13 = getelementptr inbounds %struct.arpc, %struct.arpc* %12, i32 0, i32 1
  %14 = call i32 @list_del(i32* %13)
  br label %15

15:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
