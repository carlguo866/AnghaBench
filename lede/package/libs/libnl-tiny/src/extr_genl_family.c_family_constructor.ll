; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_family.c_family_constructor.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_family.c_family_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_object = type { i32 }
%struct.genl_family = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nl_object*)* @family_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @family_constructor(%struct.nl_object* %0) #0 {
  %2 = alloca %struct.nl_object*, align 8
  %3 = alloca %struct.genl_family*, align 8
  store %struct.nl_object* %0, %struct.nl_object** %2, align 8
  %4 = load %struct.nl_object*, %struct.nl_object** %2, align 8
  %5 = bitcast %struct.nl_object* %4 to %struct.genl_family*
  store %struct.genl_family* %5, %struct.genl_family** %3, align 8
  %6 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %7 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %6, i32 0, i32 1
  %8 = call i32 @nl_init_list_head(i32* %7)
  %9 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %10 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %9, i32 0, i32 0
  %11 = call i32 @nl_init_list_head(i32* %10)
  ret void
}

declare dso_local i32 @nl_init_list_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
