; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_log_teardown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_eventlog.c_tpm_bios_log_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_bios_log_teardown(%struct.dentry** %0) #0 {
  %2 = alloca %struct.dentry**, align 8
  %3 = alloca i32, align 4
  store %struct.dentry** %0, %struct.dentry*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.dentry**, %struct.dentry*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.dentry*, %struct.dentry** %8, i64 %10
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  %13 = call i32 @securityfs_remove(%struct.dentry* %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @securityfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
