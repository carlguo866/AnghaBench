; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_fill_sa_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_fill_sa_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { %struct.lltable* }
%struct.lltable = type { i32 (%struct.llentry.0*, %struct.sockaddr*)* }
%struct.llentry.0 = type opaque
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lltable_fill_sa_entry(%struct.llentry* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.llentry*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.lltable*, align 8
  store %struct.llentry* %0, %struct.llentry** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %6 = load %struct.llentry*, %struct.llentry** %3, align 8
  %7 = getelementptr inbounds %struct.llentry, %struct.llentry* %6, i32 0, i32 0
  %8 = load %struct.lltable*, %struct.lltable** %7, align 8
  store %struct.lltable* %8, %struct.lltable** %5, align 8
  %9 = load %struct.lltable*, %struct.lltable** %5, align 8
  %10 = getelementptr inbounds %struct.lltable, %struct.lltable* %9, i32 0, i32 0
  %11 = load i32 (%struct.llentry.0*, %struct.sockaddr*)*, i32 (%struct.llentry.0*, %struct.sockaddr*)** %10, align 8
  %12 = load %struct.llentry*, %struct.llentry** %3, align 8
  %13 = bitcast %struct.llentry* %12 to %struct.llentry.0*
  %14 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %15 = call i32 %11(%struct.llentry.0* %13, %struct.sockaddr* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
