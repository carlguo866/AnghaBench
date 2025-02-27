; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @selinux_file_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_receive(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cred*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %4, %struct.cred** %3, align 8
  %5 = load %struct.cred*, %struct.cred** %3, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call i32 @file_to_av(%struct.file* %7)
  %9 = call i32 @file_has_perm(%struct.cred* %5, %struct.file* %6, i32 %8)
  ret i32 %9
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

declare dso_local i32 @file_to_av(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
