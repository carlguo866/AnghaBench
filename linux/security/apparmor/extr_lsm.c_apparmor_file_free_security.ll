; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_file_free_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_file_free_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.aa_file_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @apparmor_file_free_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apparmor_file_free_security(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.aa_file_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.aa_file_ctx* @file_ctx(%struct.file* %4)
  store %struct.aa_file_ctx* %5, %struct.aa_file_ctx** %3, align 8
  %6 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %3, align 8
  %7 = icmp ne %struct.aa_file_ctx* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.aa_file_ctx, %struct.aa_file_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rcu_access_pointer(i32 %11)
  %13 = call i32 @aa_put_label(i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.aa_file_ctx* @file_ctx(%struct.file*) #1

declare dso_local i32 @aa_put_label(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
