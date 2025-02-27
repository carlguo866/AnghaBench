; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_cred_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_cred_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type opaque
%struct.task_smack = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cred*, %struct.cred*)* @smack_cred_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_cred_transfer(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.task_smack*, align 8
  %6 = alloca %struct.task_smack*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %7 = load %struct.cred*, %struct.cred** %4, align 8
  %8 = call %struct.task_smack* @smack_cred(%struct.cred* %7)
  store %struct.task_smack* %8, %struct.task_smack** %5, align 8
  %9 = load %struct.cred*, %struct.cred** %3, align 8
  %10 = call %struct.task_smack* @smack_cred(%struct.cred* %9)
  store %struct.task_smack* %10, %struct.task_smack** %6, align 8
  %11 = load %struct.task_smack*, %struct.task_smack** %5, align 8
  %12 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.task_smack*, %struct.task_smack** %6, align 8
  %15 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.task_smack*, %struct.task_smack** %5, align 8
  %17 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.task_smack*, %struct.task_smack** %6, align 8
  %20 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.task_smack*, %struct.task_smack** %6, align 8
  %22 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.task_smack*, %struct.task_smack** %6, align 8
  %25 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  ret void
}

declare dso_local %struct.task_smack* @smack_cred(%struct.cred*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
