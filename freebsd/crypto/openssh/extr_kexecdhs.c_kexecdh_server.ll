; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhs.c_kexecdh_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhs.c_kexecdh_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"expecting SSH2_MSG_KEX_ECDH_INIT\00", align 1
@SSH2_MSG_KEX_ECDH_INIT = common dso_local global i32 0, align 4
@input_kex_ecdh_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexecdh_server(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %3 = call i32 @debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ssh*, %struct.ssh** %2, align 8
  %5 = load i32, i32* @SSH2_MSG_KEX_ECDH_INIT, align 4
  %6 = call i32 @ssh_dispatch_set(%struct.ssh* %4, i32 %5, i32* @input_kex_ecdh_init)
  ret i32 0
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
