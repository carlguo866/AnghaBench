; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_put_css_set_taskexit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_put_css_set_taskexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.css_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.css_set*)* @put_css_set_taskexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_css_set_taskexit(%struct.css_set* %0) #0 {
  %2 = alloca %struct.css_set*, align 8
  store %struct.css_set* %0, %struct.css_set** %2, align 8
  %3 = load %struct.css_set*, %struct.css_set** %2, align 8
  %4 = call i32 @__put_css_set(%struct.css_set* %3, i32 1)
  ret void
}

declare dso_local i32 @__put_css_set(%struct.css_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
