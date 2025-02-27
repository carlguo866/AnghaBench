; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_set_aes_iv_key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_set_aes_iv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpx = type { i32, i32 }

@CPX_IV_AES_CTX_INITIALIZED = common dso_local global i32 0, align 4
@CPX_USE_OFFSET_FOR_IV = common dso_local global i32 0, align 4
@CPX_IV_AES_CTX_VFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpx_set_aes_iv_key(%struct.cpx* %0, i8* %1) #0 {
  %3 = alloca %struct.cpx*, align 8
  %4 = alloca i8*, align 8
  store %struct.cpx* %0, %struct.cpx** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.cpx*, %struct.cpx** %3, align 8
  %7 = getelementptr inbounds %struct.cpx, %struct.cpx* %6, i32 0, i32 1
  %8 = call i32 @aes_encrypt_key128(i8* %5, i32* %7)
  %9 = load %struct.cpx*, %struct.cpx** %3, align 8
  %10 = getelementptr inbounds %struct.cpx, %struct.cpx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CPX_IV_AES_CTX_INITIALIZED, align 4
  %13 = load i32, i32* @CPX_USE_OFFSET_FOR_IV, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @SET(i32 %11, i32 %14)
  %16 = load %struct.cpx*, %struct.cpx** %3, align 8
  %17 = getelementptr inbounds %struct.cpx, %struct.cpx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CPX_IV_AES_CTX_VFS, align 4
  %20 = call i32 @CLR(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @aes_encrypt_key128(i8*, i32*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
