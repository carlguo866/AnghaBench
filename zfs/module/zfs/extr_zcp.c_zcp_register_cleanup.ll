; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_register_cleanup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_register_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @zcp_register_cleanup(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_7__* @zcp_run_info(i32* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load i32, i32* @KM_SLEEP, align 4
  %12 = call %struct.TYPE_8__* @kmem_alloc(i32 16, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = call i32 @list_insert_head(i32* %20, %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %23
}

declare dso_local %struct.TYPE_7__* @zcp_run_info(i32*) #1

declare dso_local %struct.TYPE_8__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
