; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_sem_free.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_sem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32* }

@sem_free_security = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @security_sem_free(%struct.kern_ipc_perm* %0) #0 {
  %2 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %2, align 8
  %3 = load i32, i32* @sem_free_security, align 4
  %4 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %5 = call i32 @call_void_hook(i32 %3, %struct.kern_ipc_perm* %4)
  %6 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %7 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %2, align 8
  %11 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  ret void
}

declare dso_local i32 @call_void_hook(i32, %struct.kern_ipc_perm*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
