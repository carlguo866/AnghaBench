; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_sigio_perm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_sigio_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.fown_struct = type { i32, i32 }
%struct.cred = type { i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.fown_struct*, i32)* @sigio_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigio_perm(%struct.task_struct* %0, %struct.fown_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.fown_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.fown_struct* %1, %struct.fown_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call %struct.cred* @__task_cred(%struct.task_struct* %10)
  store %struct.cred* %11, %struct.cred** %7, align 8
  %12 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %13 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %16 = call i64 @uid_eq(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %3
  %19 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %20 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cred*, %struct.cred** %7, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @uid_eq(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %18
  %28 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %29 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cred*, %struct.cred** %7, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @uid_eq(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %27
  %37 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %38 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cred*, %struct.cred** %7, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @uid_eq(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %47 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cred*, %struct.cred** %7, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @uid_eq(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45, %36, %27, %18, %3
  %55 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %56 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @security_file_send_sigiotask(%struct.task_struct* %55, %struct.fown_struct* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %54, %45
  %62 = phi i1 [ false, %45 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = call i32 (...) @rcu_read_unlock()
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @security_file_send_sigiotask(%struct.task_struct*, %struct.fown_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
