; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_get_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_addr = type { i32 }

@acl_deny = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_get_control(%struct.acl_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acl_addr*, align 8
  store %struct.acl_addr* %0, %struct.acl_addr** %3, align 8
  %4 = load %struct.acl_addr*, %struct.acl_addr** %3, align 8
  %5 = icmp ne %struct.acl_addr* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.acl_addr*, %struct.acl_addr** %3, align 8
  %8 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @acl_deny, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
