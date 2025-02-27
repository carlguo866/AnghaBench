; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sk_clone_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sk_clone_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @selinux_sk_clone_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_sk_clone_security(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_security_struct*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  store %struct.sk_security_struct* %9, %struct.sk_security_struct** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load %struct.sk_security_struct*, %struct.sk_security_struct** %11, align 8
  store %struct.sk_security_struct* %12, %struct.sk_security_struct** %6, align 8
  %13 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %14 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %17 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %19 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %22 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_security_struct*, %struct.sk_security_struct** %5, align 8
  %24 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %27 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %29 = call i32 @selinux_netlbl_sk_security_reset(%struct.sk_security_struct* %28)
  ret void
}

declare dso_local i32 @selinux_netlbl_sk_security_reset(%struct.sk_security_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
