; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev.c_tpm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev.c_tpm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.file_priv* }
%struct.file_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tpm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_priv*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  store %struct.file_priv* %8, %struct.file_priv** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = load %struct.file_priv*, %struct.file_priv** %5, align 8
  %11 = call i32 @tpm_common_release(%struct.file* %9, %struct.file_priv* %10)
  %12 = load %struct.file_priv*, %struct.file_priv** %5, align 8
  %13 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 0, i32* %15)
  %17 = load %struct.file_priv*, %struct.file_priv** %5, align 8
  %18 = call i32 @kfree(%struct.file_priv* %17)
  ret i32 0
}

declare dso_local i32 @tpm_common_release(%struct.file*, %struct.file_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.file_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
