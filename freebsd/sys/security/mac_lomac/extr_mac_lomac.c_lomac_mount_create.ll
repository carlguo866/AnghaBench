; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_mount_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_mount_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.mount = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.mount*, %struct.label*)* @lomac_mount_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_mount_create(%struct.ucred* %0, %struct.mount* %1, %struct.label* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.mac_lomac*, align 8
  %8 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store %struct.label* %2, %struct.label** %6, align 8
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load %struct.label*, %struct.label** %10, align 8
  %12 = call %struct.mac_lomac* @SLOT(%struct.label* %11)
  store %struct.mac_lomac* %12, %struct.mac_lomac** %7, align 8
  %13 = load %struct.label*, %struct.label** %6, align 8
  %14 = call %struct.mac_lomac* @SLOT(%struct.label* %13)
  store %struct.mac_lomac* %14, %struct.mac_lomac** %8, align 8
  %15 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %16 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %17 = call i32 @lomac_copy_single(%struct.mac_lomac* %15, %struct.mac_lomac* %16)
  ret void
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
