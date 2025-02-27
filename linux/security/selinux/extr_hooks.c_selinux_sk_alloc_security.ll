; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sk_alloc_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sk_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i8* null, align 8
@SECCLASS_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32)* @selinux_sk_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sk_alloc_security(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_security_struct*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call %struct.sk_security_struct* @kzalloc(i32 24, i32 %9)
  store %struct.sk_security_struct* %10, %struct.sk_security_struct** %8, align 8
  %11 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %12 = icmp ne %struct.sk_security_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i8*, i8** @SECINITSID_UNLABELED, align 8
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %19 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @SECINITSID_UNLABELED, align 8
  %21 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %22 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @SECCLASS_SOCKET, align 4
  %24 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %25 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %27 = call i32 @selinux_netlbl_sk_security_reset(%struct.sk_security_struct* %26)
  %28 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  store %struct.sk_security_struct* %28, %struct.sk_security_struct** %30, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.sk_security_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @selinux_netlbl_sk_security_reset(%struct.sk_security_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
