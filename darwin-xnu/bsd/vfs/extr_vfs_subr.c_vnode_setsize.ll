; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_setsize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }

@va_data_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_setsize(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode_attr, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @VATTR_INIT(%struct.vnode_attr* %9)
  %11 = load i32, i32* @va_data_size, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @VATTR_SET(%struct.vnode_attr* %9, i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 65535
  %16 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @vnode_setattr(i32 %17, %struct.vnode_attr* %9, i32 %18)
  ret i32 %19
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vnode_setattr(i32, %struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
