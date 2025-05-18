//
//  ONNX.swift
//  adlerflow
//
//  Created by adler on 18.05.2025.
//  Um die InsightFace ONNX-Modelle in deinem Xcode-Projekt zu verwenden

//  ONNX in Core ML umwandeln

  import coremltools as ct
  import onnx

  # ONNX-Modell laden
  onnx_model_path = '/Users/adler/local/repos/adlerflow/buffalo_l/det_10g.onnx'

  # Zu Core ML konvertieren
  cml_model = ct.converters.onnx.convert(
      model=onnx_model_path,
      minimum_ios_deployment_target='15'
  )

  # Core ML-Modell speichern
  cml_model.save("FaceDetector.mlmodel")
  2. Im Xcode-Projekt einrichten:
    - Füge die .mlmodel-Datei zum Projekt hinzu
    - Xcode generiert automatisch Swift-Klassen für dein Modell
  3. Verwendung im Code:
  import CoreML
  import Vision

  class FaceRecognizer {
      private let faceDetector: VNCoreMLModel
      private let faceEmbedder: VNCoreMLModel

      init() throws {
          // Modelle laden
          guard let detectorURL = Bundle.main.url(forResource: "FaceDetector", withExtension: "mlmodel"),
                let embedderURL = Bundle.main.url(forResource: "FaceEmbedder", withExtension: "mlmodel") else {
              throw NSError(domain: "ModelError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Modelle nicht gefunden"])
          }

          self.faceDetector = try VNCoreMLModel(for: MLModel(contentsOf: detectorURL))
          self.faceEmbedder = try VNCoreMLModel(for: MLModel(contentsOf: embedderURL))
      }

      // Gesichtserkennung implementieren...

      // Gesichtserkennung
      func detectFaces(in image: UIImage) -> [CGRect] {
          // Modell verwenden, um Gesichter zu erkennen
      }

      // Gesichtsmerkmale extrahieren
      func extractFeatures(from faceImage: UIImage) -> [Float] {
          // Gesichtsvektorisierung durchführen
      }

      // Gesichtsvergleich
      func compareFaces(face1: [Float], face2: [Float]) -> Float {
          // Cosinus-Ähnlichkeit berechnen
          // Wert zwischen 0 und 1, wobei höhere Werte ähnlichere Gesichter bedeuten
      }

      // 3. Kameraintegration:
      // AVCaptureSession einrichten
      // Frames verarbeiten und an die Erkennungsfunktionen übergeben


