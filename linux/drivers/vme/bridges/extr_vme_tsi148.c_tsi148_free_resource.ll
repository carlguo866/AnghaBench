; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_free_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_free_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vme_master_resource*)* @tsi148_free_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi148_free_resource(%struct.vme_master_resource* %0) #0 {
  %2 = alloca %struct.vme_master_resource*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %2, align 8
  %3 = load %struct.vme_master_resource*, %struct.vme_master_resource** %2, align 8
  %4 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @iounmap(i32* %5)
  %7 = load %struct.vme_master_resource*, %struct.vme_master_resource** %2, align 8
  %8 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.vme_master_resource*, %struct.vme_master_resource** %2, align 8
  %10 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %9, i32 0, i32 0
  %11 = call i32 @release_resource(%struct.TYPE_3__* %10)
  %12 = load %struct.vme_master_resource*, %struct.vme_master_resource** %2, align 8
  %13 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.vme_master_resource*, %struct.vme_master_resource** %2, align 8
  %18 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %17, i32 0, i32 0
  %19 = call i32 @memset(%struct.TYPE_3__* %18, i32 0, i32 4)
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
