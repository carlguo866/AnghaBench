; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_CheckCurrentFileCoherencyHeader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_CheckCurrentFileCoherencyHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@UNZ_OK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_ERRNO = common dso_local global i32 0, align 4
@UNZ_BADZIPFILE = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i64 0, align 8
@SIZEZIPLOCALHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i32*, i64*)* @unzlocal_CheckCurrentFileCoherencyHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unzlocal_CheckCurrentFileCoherencyHeader(%struct.TYPE_7__* %0, i64* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* @UNZ_OK, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i64 @fseek(i32 %22, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %35, i32* %5, align 4
  br label %263

36:                                               ; preds = %4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @UNZ_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @unzlocal_getLong(i32 %43, i32* %10)
  %45 = load i32, i32* @UNZ_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %48, i32* %15, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 67324752
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @unzlocal_getShort(i32 %59, i32* %11)
  %61 = load i32, i32* @UNZ_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @unzlocal_getShort(i32 %68, i32* %12)
  %70 = load i32, i32* @UNZ_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @unzlocal_getShort(i32 %77, i32* %11)
  %79 = load i32, i32* @UNZ_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %82, i32* %15, align 4
  br label %97

83:                                               ; preds = %74
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @UNZ_OK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %94, %87, %83
  br label %97

97:                                               ; preds = %96, %81
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @UNZ_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @Z_DEFLATED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %115, %107, %101, %97
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @unzlocal_getLong(i32 %120, i32* %11)
  %122 = load i32, i32* @UNZ_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %124, %117
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @unzlocal_getLong(i32 %129, i32* %11)
  %131 = load i32, i32* @UNZ_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %134, i32* %15, align 4
  br label %153

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @UNZ_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %150, %146, %139, %135
  br label %153

153:                                              ; preds = %152, %133
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @unzlocal_getLong(i32 %156, i32* %11)
  %158 = load i32, i32* @UNZ_OK, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %161, i32* %15, align 4
  br label %180

162:                                              ; preds = %153
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @UNZ_OK, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %167, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* %12, align 4
  %175 = and i32 %174, 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %177, %173, %166, %162
  br label %180

180:                                              ; preds = %179, %160
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @unzlocal_getLong(i32 %183, i32* %11)
  %185 = load i32, i32* @UNZ_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %188, i32* %15, align 4
  br label %207

189:                                              ; preds = %180
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* @UNZ_OK, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %194, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %205, i32* %15, align 4
  br label %206

206:                                              ; preds = %204, %200, %193, %189
  br label %207

207:                                              ; preds = %206, %187
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @unzlocal_getShort(i32 %210, i32* %13)
  %212 = load i32, i32* @UNZ_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %215, i32* %15, align 4
  br label %230

216:                                              ; preds = %207
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @UNZ_OK, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32, i32* %13, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %221, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %228, i32* %15, align 4
  br label %229

229:                                              ; preds = %227, %220, %216
  br label %230

230:                                              ; preds = %229, %214
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64*, i64** %7, align 8
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, %232
  store i64 %235, i64* %233, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @unzlocal_getShort(i32 %238, i32* %14)
  %240 = load i32, i32* @UNZ_OK, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %230
  %243 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %243, i32* %15, align 4
  br label %244

244:                                              ; preds = %242, %230
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SIZEZIPLOCALHEADER, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32*, i32** %8, align 8
  store i32 %252, i32* %253, align 4
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64*, i64** %9, align 8
  store i64 %255, i64* %256, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = load i64*, i64** %7, align 8
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %258
  store i64 %261, i64* %259, align 8
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %244, %34
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @unzlocal_getLong(i32, i32*) #1

declare dso_local i32 @unzlocal_getShort(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
