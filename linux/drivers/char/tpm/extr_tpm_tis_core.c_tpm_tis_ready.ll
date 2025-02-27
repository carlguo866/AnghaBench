; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_STS_COMMAND_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*)* @tpm_tis_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_tis_ready(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_tis_data*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %4 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %4, i32 0, i32 0
  %6 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %5)
  store %struct.tpm_tis_data* %6, %struct.tpm_tis_data** %3, align 8
  %7 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %8 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TPM_STS(i32 %10)
  %12 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %13 = call i32 @tpm_tis_write8(%struct.tpm_tis_data* %7, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_write8(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @TPM_STS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
